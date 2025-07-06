<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Withdraw Money</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<div class="container">
  <h2>💸 Withdraw Funds</h2>
  <form method="post" action="WithdrawServlet">
    <input type="text" name="id" placeholder="Customer ID" required />
    <input type="number" name="amount" placeholder="Withdraw Amount" required />
    <input type="submit" value="Withdraw" />
  </form>
</div>
</body>
</html>
