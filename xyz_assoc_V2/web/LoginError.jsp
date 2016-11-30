<%-- 
    Document   : LoginError
    Created on : 30-Nov-2016, 01:32:54
    Author     : Lewis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Error</title>
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
        <h1>XYZ Drivers Association</h1>
        <h2>Oops...You have entered incorrect Login details.</h2>
        <p1> Have no fear! You will automatically be returned to the login page!</p1>
    </body>
    <% Thread.sleep(5000);
        response.sendRedirect("index.jsp"); %>
</html>