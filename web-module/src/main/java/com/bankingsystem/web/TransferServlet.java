package com.bankingsystem.web;
import com.bankingsystem.ejb.BankService;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/transfer")
public class TransferServlet extends HttpServlet {

    @EJB
    private BankService bankService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            Long fromId = Long.parseLong(req.getParameter("fromId"));
            Long toId = Long.parseLong(req.getParameter("toId"));
            double amount = Double.parseDouble(req.getParameter("amount"));

            bankService.transferFunds(fromId, toId, amount);
            resp.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("error.jsp");
        }
    }
}

