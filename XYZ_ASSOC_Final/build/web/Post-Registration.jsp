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
        <title>Registration Complete</title>
    </head>
     <style>
        h1{
            color:dodgerblue;
            text-align:center;
            font-family:calibri;
            font-size:300%;
        }
        h2{
            color:lightgray;
            text-align:center;
            font-family:calibri;
            font-size:150%;
        }
        p1{
            color:black;
            text-align:center;
            font-family:calibri;
            font-size:100%   
        }           
    </style>
    <body>
    <div align='center' class="container">
            <h1>XYZ Drivers Association</h1>
            <h2> Thank you and welcome to XYZ Association! </h2>
            <p><b>Your username is:  </b></p>
            <% out.println(request.getAttribute("username")); %>
            <br>
            <p><b>Your password is:</b></p>
            <% out.println(request.getAttribute("password"));%>
            
            <br>
            <br>
            <button type="button" onclick="location.href='index.jsp'">Login</button>  
        </div>
    </body>
</html>
