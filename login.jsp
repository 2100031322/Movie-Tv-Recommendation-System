<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" session="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MoviePlus - Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            text-align: center;
        }

        .container {
            background-color: #ffffff;
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #343a40;
        }

        .input-group {
            margin: 15px 0;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .input-group img {
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 10px;
        }

        .input-group input[type="submit"] {
            background-color: #343a40;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .input-group input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <f:form action="dash" method="post">
            <div class="input-group">
                un: <f:input path="un"/>
            </div>
            <div class="input-group">
                pw: <f:input path="pw"/>
            </div>
            <div class="input-group">
                Captcha: <img src="data:real/jpg;base64, ${command.realCaptcha}" alt="Captcha"/>
            </div>
            <div class="input-group">
                captcha: <f:input path="captcha"/>
                <f:hidden path="hiddenCaptcha"/>
            </div>
            <div class="input-group">
                <input type="submit" value="Register"/>
            </div>
            <div class="input-group">
                <a href="login1.jsp"><input type="button" value="Login"/></a>
            </div>
        </f:form>
    </div>
</body>
</html>
