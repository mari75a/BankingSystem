<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Details</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style>
        body {
            background: linear-gradient(to right, #f3f4f6, #e0e7ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Segoe UI', sans-serif;
        }
        .info-box {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        h2 {
            color: #1f2937;
            margin-bottom: 20px;
        }
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            border-radius: 8px;
            border: 1px solid #cbd5e0;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: #2563eb;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 8px;
        }
        input[type="submit"]:hover {
            background: #1d4ed8;
        }
    </style>
</head>
<body>
<div class="info-box">
    <h2>Check Customer Info</h2>
    <form method="post" action="customerDetails">
        <input type="number" name="customerId" placeholder="Enter Customer ID" required />
        <input type="submit" value="View Details" />
    </form>
</div>
</body>
</html>
