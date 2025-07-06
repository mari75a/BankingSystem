package com.bankingsystem.web;

import com.bankingsystem.ejb.BankService;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/createCustomer")
public class CustomerServlet extends HttpServlet {

    @EJB
    private BankService bankService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        double balance = Double.parseDouble(req.getParameter("balance"));

        bankService.createCustomer(name, balance);

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h2>Customer Created Successfully</h2>");
    }
}
