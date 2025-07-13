<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Transfer Funds</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
  <style>
    body {
      background: linear-gradient(to right, #f3f4f6, #e0e7ff);
      font-family: 'Segoe UI', sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .transfer-box {
      background: white;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
      width: 400px;
      animation: fadeIn 0.5s ease-in-out;
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #1f2937;
    }

    input[type="number"] {
      width: 100%;
      padding: 10px;
      margin: 12px 0;
      border: 1px solid #d1d5db;
      border-radius: 8px;
      transition: border 0.3s;
    }

    input[type="number"]:focus {
      border-color: #60a5fa;
      outline: none;
    }

    input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #2563eb;
      color: white;
      border: none;
      border-radius: 8px;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #1d4ed8;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
<div class="transfer-box">
  <h2>Transfer Funds</h2>
  <form method="post" action="transfer">
    <input type="number" name="fromId" placeholder="From Account ID" required />
    <input type="number" name="toId" placeholder="To Account ID" required />
    <input type="number" step="0.01" name="amount" placeholder="Amount" required />
    <input type="submit" value="Transfer" />
  </form>
</div>
</body>
</html>
