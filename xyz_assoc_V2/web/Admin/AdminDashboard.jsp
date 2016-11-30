<%-- 
    Document   : AdminDashboard
    Created on : 30-Nov-2016, 19:51:47
    Author     : Lewis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
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
        <h2>Welcome to your administration dashboard</h2>
        <form align="center" method="POST" action="">
            <p1>
            <br>
            <button type="button" onclick="location.href='ListMembers.jsp'">List all Members</button>          
            <br>
            <br>
            <button type="button" onclick=("PaymentSubmission.jsp")>List all Outstanding Balances</button>          
            <br>
            <br>
            <button type="button" onclick="location.href='ListPendingClaims.jsp'">List Pending Claims</button>
            <br>
            <br>
            <button type="button" onclick="location.href='ListPendingMembers.jsp'">List Pending Members</button>
            <br>
            <br>
            <button type="button" onclick="location.href='ListPayments.jsp'">List all Payments</button>
            <br>
            <br>
            <button type="button" onclick=("PaymentSubmission.jsp")>Reports</button>          
            <br>
            <br>                                    
            <button type="button" onclick="location.href='index.jsp'">Logout</button>
            </p1>
        </form> 
    </body>
</html>
