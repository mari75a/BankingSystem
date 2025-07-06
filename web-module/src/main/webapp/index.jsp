<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Banking Dashboard</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<div class="nav-container">
    <input type="button" class="nav-button" value="➕ Create Customer" onclick="location.href='createCustomer.jsp'" />
    <input type="button" class="nav-button" value="💰 Deposit" onclick="location.href='deposit.jsp'" />
    <input type="button" class="nav-button" value="💸 Withdraw" onclick="location.href='withdraw.jsp'" />
    <input type="button" class="nav-button" value="🔁 Transfer" onclick="location.href='transfer.jsp'" />
    <input type="button" class="nav-button" value="👤 Customer Info" onclick="location.href='customerDetails.jsp'" />
</div>
</body>
</html>
