<%-- 
    Document   : MemberDashboard
    Created on : 30-Nov-2016, 00:32:02
    Author     : Lewis
--%>

<%@page import="model.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
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
        <h2>Your Dashboard</h2>
        <form align="center" method="POST" action="UserService.do">
            <p1>
            <br>
            <button type="button" onclick="location.href='PaymentSubmission.jsp'">Submit Claim</button>
            <br>
            <br>
            <button type="button" onclick="location.href='UserClaims.jsp'">View Submitted Claims</button>
            <br>
            <br>
            <button type="button" onclick="location.href='UserPayments.jsp'">View Payments</button>
            <br>
            <br>
            <button type="button" onclick="location.href='PaymentSubmission.jsp'">Submit Payment</button>          
            <br>
            <br>                                    
            <button type="button" onclick="location.href='index.jsp'">Logout</button>
            </p1>
        </form> 
    </body>
</html>

