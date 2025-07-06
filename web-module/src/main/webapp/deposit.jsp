<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Deposit Money</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<div class="container">
  <h2>💰 Deposit Funds</h2>
  <form method="post" action="DepositServlet">
    <input type="text" name="id" placeholder="Customer ID" required />
    <input type="number" name="amount" placeholder="Deposit Amount" required />
    <input type="submit" value="Deposit" />
  </form>
</div>
</body>
</html>
