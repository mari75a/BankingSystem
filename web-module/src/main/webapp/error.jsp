<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        body {
            background: #fef2f2;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            font-family: 'Segoe UI', sans-serif;
        }
        .box {
            background: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: fadeIn 0.5s ease;
        }
        .box h2 {
            color: #ef4444;
            margin-bottom: 15px;
        }
        .box p {
            color: #4b5563;
        }
        .box a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #ef4444;
            color: white;
            padding: 10px 20px;
            border-radius: 6px;
            transition: background 0.3s;
        }
        .box a:hover {
            background-color: #dc2626;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
<div class="box">
    <h2>❌ Something Went Wrong</h2>
    <p>We couldn’t complete your request. Please try again.</p>
    <a href="index.jsp">Return to Dashboard</a>
</div>
</body>
</html>
