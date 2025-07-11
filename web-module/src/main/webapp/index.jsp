<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.security.Principal" %>
<html>
<head>
    <title>Banking Dashboard</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #f3f4f6, #e0e7ff);
            margin: 0;
            padding: 0;
        }
        .header {
            padding: 20px;
            background-color: #1f2937;
            color: white;
            text-align: center;
        }
        .nav-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 30px;
            gap: 15px;
        }
        .nav-button {
            padding: 15px 25px;
            font-size: 16px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: background 0.3s ease, transform 0.2s ease;
        }
        .nav-button:hover {
            background-color: #1d4ed8;
            transform: translateY(-2px);
        }
        .footer {
            text-align: center;
            margin-top: 40px;
            color: #6b7280;
        }
    </style>
</head>
<body>

<%
    Principal user = request.getUserPrincipal();
    String username = user != null ? user.getName() : "Guest";
%>

<div class="header">
    <h2>Welcome, <%= username %></h2>
    <p>
        Role:
        <%
            if (request.isUserInRole("Admin")) { System.out.print("Admin"); }
            else if (request.isUserInRole("Manager")) { System.out.print("Manager"); }
            else if (request.isUserInRole("Clerk")) { System.out.print("Clerk"); }
            else { System.out.print("User"); }
        %>
    </p>
</div>

<div class="nav-container">
    <% if (request.isUserInRole("Admin") || request.isUserInRole("Clerk")) { %>
    <input type="button" class="nav-button" value="➕ Create Customer" onclick="location.href='createCustomer.jsp'" />
    <% } %>

    <% if (request.isUserInRole("Admin") || request.isUserInRole("Clerk")) { %>
    <input type="button" class="nav-button" value="💰 Deposit" onclick="location.href='deposit.jsp'" />
    <input type="button" class="nav-button" value="💸 Withdraw" onclick="location.href='withdraw.jsp'" />
    <% } %>

    <% if (request.isUserInRole("Admin")) { %>
    <input type="button" class="nav-button" value="🔁 Transfer" onclick="location.href='transfer.jsp'" />
    <% } %>

    <% if (request.isUserInRole("Admin") || request.isUserInRole("Manager")) { %>
    <input type="button" class="nav-button" value="👤 Customer Info" onclick="location.href='customerDetails.jsp'" />
    <% } %>

    <input type="button" class="nav-button" value="🚪 Logout" onclick="location.href='logout.jsp'" />
</div>

<div class="footer">
    <p>&copy; 2025 National Bank Core System</p>
</div>

</body>
</html>
