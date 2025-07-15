package com.bankingsystem.web;

import com.bankingsystem.ejb.BankService;
import com.bankingsystem.ejb.Customer;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/customerDetails")
public class CustomerDetailsServlet extends HttpServlet {

    @EJB
    private BankService bankService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            Long id = Long.parseLong(req.getParameter("customerId"));
            Customer customer = bankService.getCustomer(id);

            if (customer == null) {
                req.setAttribute("error", "Customer not found.");
                req.getRequestDispatcher("error.jsp").forward(req, resp);
                return;
            }

            req.setAttribute("customer", customer);
            req.getRequestDispatcher("customerInfo.jsp").forward(req, resp);
        } catch (Exception e) {
            req.setAttribute("error", "Invalid request.");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }
    }
}
