package com.bankingsystem.web;

import com.bankingsystem.ejb.BankService;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/createCustomer")
public class CustomerServlet extends HttpServlet {

    @EJB
    private BankService bankService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            double balance = Double.parseDouble(req.getParameter("balance"));

            bankService.createCustomer(name, balance);

            // Redirect to success page
            resp.sendRedirect("success.jsp");
        } catch (Exception e) {
            // Optional: log error
            e.printStackTrace();

            // Redirect to error page
            resp.sendRedirect("error.jsp");
        }
    }
}
