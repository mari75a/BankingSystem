<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Banking System Login</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        body {
            background: linear-gradient(to right, #f3f4f6, #e0e7ff);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-box {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
            width: 350px;
            animation: fadeIn 0.6s ease-in-out;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #1f2937;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 12px 0;
            border: 1px solid #d1d5db;
            border-radius: 8px;
            transition: border 0.3s;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #60a5fa;
            outline: none;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #1d4ed8;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
<div class="login-box">
    <h2>Bank Login</h2>
    <form method="POST" action="j_security_check">
        <input type="text" name="j_username" placeholder="Username" required />
        <input type="password" name="j_password" placeholder="Password" required />
        <button type="submit">Sign In</button>
    </form>

    <% if (request.getParameter("error") != null) { %>
    <div class="error">Invalid credentials. Try again.</div>
    <% } %>
</div>
</body>
</html>
