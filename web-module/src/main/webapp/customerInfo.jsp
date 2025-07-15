<%@ page import="com.bankingsystem.ejb.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Customer Info</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
  <style>
    body {
      background: #f9fafb;
      font-family: 'Segoe UI', sans-serif;
      padding: 50px;
    }
    .info-card {
      max-width: 400px;
      margin: auto;
      background: white;
      padding: 25px;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.12);
      animation: fadeIn 0.4s ease-in;
    }
    h2 {
      color: #2563eb;
      text-align: center;
    }
    .data {
      margin-top: 20px;
    }
    .data p {
      font-size: 16px;
      color: #374151;
      margin: 10px 0;
    }
    a {
      display: inline-block;
      margin-top: 20px;
      text-decoration: none;
      background: #2563eb;
      color: white;
      padding: 8px 16px;
      border-radius: 6px;
    }
  </style>
</head>
<body>
<%
  Customer c = (Customer) request.getAttribute("customer");
%>
<div class="info-card">
  <h2>Customer Details</h2>
  <div class="data">
    <p><strong>ID:</strong> <%= c.getId() %></p>
    <p><strong>Name:</strong> <%= c.getName() %></p>
    <p><strong>Balance:</strong> LKR <%= String.format("%.2f", c.getBalance()) %></p>
  </div>
  <a href="index.jsp">⬅ Back to Dashboard</a>
</div>
</body>
</html>
