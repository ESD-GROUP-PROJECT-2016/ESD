<%-- 
    Document   : Payment-Process
    Created on : 28-Nov-2016, 17:42:11
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
    </head>
        <style>
        h1{
            color:dodgerblue;
            text-align:center;
            font-family:calibri;
            font-size:300%;
        }
        p1{
            color:black;
            text-align:center;
            font-family:calibri;
            font-size:100%   
        }           
    </style>
    <body>
        <form action="MakePayment.do" method="POST">

                    <div class="row">
                       
                            <input id="amount" type="text" name="amount">
                            <label for="amount">Payment amount</label>
                    </div>
                    <button  type="submit" name="action">Submit payment</button>
                </form>
    </body>
</html>
