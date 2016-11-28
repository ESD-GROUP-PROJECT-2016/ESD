<%-- 
    Document   : Home
    Created on : 28-Nov-2016, 17:14:32
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <div class="container">
            <h4> Thank you for registering </h4>
            <p><b>Your username is:  </b></p>
            <% out.println(request.getAttribute("username")); %>
            <br>
            <p><b>Your password is:</b></p>
            <% out.println(request.getAttribute("password"));%>
            
            <br>
            <br>
            <a href="index.jsp" class="button waves-effect waves-light btn"><i class="material-icons right">forward</i>Click here to log in</a>
        </div>
    </body>
</html>
