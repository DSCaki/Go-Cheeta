<%-- 
    Document   : welcome
    Created on : Aug 7, 2022, 11:27:03 PM
    Author     : Akthar aki
--%>

<%-- 
    Document   : index.jsp
    Created on : Aug 6, 2022, 10:52:55 AM
    Author     : Akthar aki
--%>
<%@page import="newpackage.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% user user = (user) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home page</title>
        
        <style>
            .container{
                width: 100%;
                height: 80px;
                background: darkgray;
            }
            
            li{
                float: left;
                text-decoration: none;
                list-style: none;
                padding: 10px 10px 10px;
            }
            li a{
                color: white;
                text-decoration: none;
            }
        </style>
        
    </head>
    <body>
        <div class="container">
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Product</a></li>
            <li><a href="#">Contact</a></li>
            <li style="float: right;"><a href="register.jsp">Register</a></li>
            <li style="float: right;"><a href="Login.jsp">login</a></li>
            <li style="float: right;"> Welcome, <%= user.getName() %></li>
           
        </div>
            
             <h1>Add Booking</h1>  
<form action="AddServlet" method="post">  
<table>  
<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>  
<tr><td>Password:</td><td><input type="password" name="password"/></td></tr>  
<tr><td>Email:</td><td><input type="email" name="email"/></td></tr>  
<tr><td>Country:</td><td>  
<select name="country" style="width:150px">  
<option>India</option>  
<option>USA</option>  
<option>UK</option>  
<option>Other</option>  
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="book"/></td></tr>  
</table>  
</form>  
  
<br/>  
<a href="ViewEmpServlet?page=1">view my bookings</a>  
            
            
    </body>
</html>
