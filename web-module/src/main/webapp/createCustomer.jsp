<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Bank Customer</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="container">
  <h2>Open Bank Account</h2>
  <form method="post" action="createCustomer">
    <input type="text" name="name" placeholder="Customer Name" required />
    <input type="number" name="balance" placeholder="Initial Balance" required />
    <input type="submit" value="Create Account" />
  </form>
</div>
</body>
</html>
