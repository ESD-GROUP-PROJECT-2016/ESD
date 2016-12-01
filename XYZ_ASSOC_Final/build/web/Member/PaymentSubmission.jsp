<%-- 
    Document   : PaymentSubmission
    Created on : 30-Nov-2016, 02:24:43
    Author     : Lewis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html align="center">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payments</title>
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
    <body align='center'>
        <h1>XYZ Drivers Association</h1>
        <h2>Payment Portal</h2>
    <p1>Enter the amount and click 'Submit' to submit your payment.</p1>
    <br>
    <br>
    <input id="payment" type="text" name="payment">
    <button type="button" onclick="alert('Payment of £' + payment + ' successful!')">Submit Payment</button>  
</body>
<br>
<br>
<button type="button" onclick="location.href = 'MemberDashboard.jsp'">Back to Dashboard</button>
<button type="button" onclick="location.href = 'index.jsp'">Logout</button>
</html>
