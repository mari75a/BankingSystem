package com.bankingsystem.web;

import com.bankingsystem.ejb.BankService;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/WithdrawServlet")
public class WithdrawServlet extends HttpServlet {

    @EJB
    private BankService bankService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        Long id = Long.parseLong(req.getParameter("id"));
        double amount = Double.parseDouble(req.getParameter("amount"));

        try {
            bankService.withdraw(id, amount);
            resp.sendRedirect("success.jsp");
        } catch (Exception e) {
            resp.sendRedirect("error.jsp");
        }
    }
}
