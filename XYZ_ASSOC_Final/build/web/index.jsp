<%-- 
    Document   : index
    Created on : 09-Mar-2016, 16:52:19
    Author     : Lewis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>XYZ Drivers Association</title>
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
        <h2>Welcome! <br><br>Please log in to continue...</h2>
        <form action="MemberLogin.do" method="POST">  
                <TABLE align='center'>
                    <TR>
                        <TD>Username:</TD>
                        <TD> <INPUT id = "username" TYPE="Text" NAME="Username" SIZE="40"></TD>
                    <TR>
                        <TD>Password:</TD>
                        <TD><INPUT id = "password" TYPE="Password" NAME="Password" SIZE="40"></TD>
                    </TR>
                </TABLE>
            <tr>
                <TD align=center><INPUT TYPE="Submit" VALUE="Login"></td>
                <td> </td>     <td>  <INPUT TYPE="RESET"></TD>
            </tr>
            
        </FORM>
        <br>
        <br>
            <button align='center' type="button" onclick="location.href='Register.jsp'">Register</button>           
</html>