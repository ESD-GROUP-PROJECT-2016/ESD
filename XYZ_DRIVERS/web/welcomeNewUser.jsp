<%-- 
    Document   : welcomeNewUser
    Created on : 29-Nov-2016, 15:11:11
    Author     : Tom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>xyz Association</title>
    </head>
    <body>
        <h1>Thank you for Registering with XYZ Association!</h1>
        
        <b><p>Your username is:</p></b>
        <% out.println(request.getAttribute("username")); %>
        <br>
        <b><p>Your password is:</p></b>
        <% out.println(request.getAttribute("password")); %>
        <br>
        <br>
        
        <a href ="index.jsp">Click here to login</a>
    </body>
</html>
