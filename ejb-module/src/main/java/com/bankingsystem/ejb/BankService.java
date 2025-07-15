package com.bankingsystem.ejb;

import jakarta.annotation.security.RolesAllowed;
import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionAttribute;
import jakarta.ejb.TransactionAttributeType;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
public class BankService {

    @PersistenceContext(unitName = "BankingPU")
    private EntityManager em;

    @RolesAllowed({"Admin", "Clerk"})
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public void createCustomer(String name, double initialBalance) {
        Customer customer = new Customer(name, initialBalance);
        em.persist(customer);
    }

    @RolesAllowed({"Admin", "Manager"})
    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
    public Customer getCustomer(Long id) {
        return em.find(Customer.class, id);
    }

    @RolesAllowed({"Admin"})
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public void transferFunds(Long fromId, Long toId, double amount) {
        Customer from = em.find(Customer.class, fromId);
        Customer to = em.find(Customer.class, toId);

        if (from.getBalance() >= amount) {
            from.setBalance(from.getBalance() - amount);
            to.setBalance(to.getBalance() + amount);
        } else {
            throw new SecurityException("Insufficient funds");
        }
    }
    @RolesAllowed({"Admin", "Clerk"})
    public void deposit(Long customerId, double amount) {
        Customer customer = em.find(Customer.class, customerId);
        if (customer != null) {
            customer.setBalance(customer.getBalance() + amount);
            em.merge(customer);
        }
    }
    @RolesAllowed({"Admin", "Clerk"})
    public void withdraw(Long customerId, double amount) throws Exception {
        Customer customer = em.find(Customer.class, customerId);
        if (customer != null) {
            if (customer.getBalance() >= amount) {
                customer.setBalance(customer.getBalance() - amount);
                em.merge(customer);
            } else {
                throw new Exception("Insufficient balance");
            }
        }
    }

    @RolesAllowed({"Admin"})
    @TransactionAttribute(TransactionAttributeType.REQUIRES_NEW)
    public void applyInterest(double interestRate) {
        em.createQuery("UPDATE Customer c SET c.balance = c.balance * :rate")
                .setParameter("rate", 1 + interestRate)
                .executeUpdate();
    }
}
