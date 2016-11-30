<%-- 
    Document   : Post-Registration
    Created on : 30-Nov-2016, 00:32:16
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration complete!</title>
    </head>
    <body>
    <div class="container">
            <h4> Thank you for successfully registering to XYZ </h4>
            <p><b>Your username is:  </b></p>
            <% out.println(request.getAttribute("username")); %>
            <br>
            <p><b>Your password is:</b></p>
            <% out.println(request.getAttribute("password"));%>
            
            <br>
            <br>
            <a href="index.jsp">Click here to log in(once you have written these details down)</a>
        </div>
    </body>
</html>
