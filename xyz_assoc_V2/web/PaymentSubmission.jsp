<%-- 
    Document   : PaymentSubmission
    Created on : 30-Nov-2016, 02:24:43
    Author     : Lewis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            text-align:left;
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
        <h2>Payment Portal</h2>
    <p1>Press 'Submit Payment' to submit your payment.</p1>
    <button type="button" onclick="alert('Payment Successful!')">Submit Payment</button>
    
    

    </body>
</html>
window.location= 'index.jsp';
