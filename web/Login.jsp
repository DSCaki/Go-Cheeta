<%-- 
    Document   : Login
    Created on : Aug 7, 2022, 11:26:45 PM
    Author     : Akthar aki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
                <div class="container">
            <div class="box">
                <img class="avatar1" src="img/1.png">
                <h1>Login Account</h1>
                    <form action="UserLoginServlet" method="post">
                <p>Username</p>
                    <input type="text" placeholder="Username" name="email" required>
                  <p>Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                    <a href="#">Forget Password?</a><br>
                    <a href="register.jsp">Create New Account</a>
                </form>
</div>
</div>
    </body>
</html>

