<%-- 
    Document   : register.jsp
    Created on : Aug 6, 2022, 10:53:54 AM
    Author     : Akthar aki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="regbox box">
                <img class="avatar" src="img/1.png">
                <h1> Register Account</h1>
                <form action="RegisterServlet" method="post">
                <p>Username</p>
                <input type="text"  name="name" required>
                 <p>Address</p>
                <input type="text" name="address" required>
                 <p>Phone-Number</p>
                <input type="text"  name="phone" required>
                <p> Useremail</p>
                <input type="text" name="email" required>
                <p>Password</p>
                <input type="password"  name="password" required>
                <input type="submit" value="Register">
                <a href="Login.jsp">Already have Account?</a>
                </form>
        </div>
    </div>
</body>
</html>