<%-- 
    Document   : Make_Claim
    Created on : 28-Nov-2016, 17:48:19
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
        
        <form action="MakeClaim.do" method="POST">
        <table>
            <tr>
                <td>Reasoning:</td>
                <td><input type="text" name="reason"></td>
            </tr> 
            <tr>
                <td>Claim Amount</td>
                <td><input type="text" name="Amount"></td>
            </tr> 
            <tr>
                <td>Reasoning:</td>
                <td><input type="text" name="reason"></td>
            </tr> 
            
        </table>
            <input type="Submit">
       </form>
    </body>
</html>
