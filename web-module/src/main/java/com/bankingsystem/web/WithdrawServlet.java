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
        int id = Integer.parseInt(req.getParameter("id"));
        double amount = Double.parseDouble(req.getParameter("amount"));

        try {
            bankService.withdraw(id, amount);
            resp.sendRedirect("index.jsp");
        } catch (Exception e) {
            resp.getWriter().println("<h3 style='color:red; text-align:center;'>❌ Withdrawal Failed: " + e.getMessage() + "</h3>");
        }
    }
}
