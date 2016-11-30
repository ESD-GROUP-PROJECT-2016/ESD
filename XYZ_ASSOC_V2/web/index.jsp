<%-- 
    Document   : index
    Created on : 09-Mar-2016, 16:52:19
    Author     : me-aydin
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
    <body>
        <h1>XYZ Drivers Association</h1>        
        <form action="MemberLogin.do" method="POST">  
                <TABLE>
                    <TR>
                        <TD>Username:</TD>
                        <TD> <INPUT TYPE="Text" NAME="UserName" SIZE="40"></TD>
                    <TR>
                        <TD>Password:</TD>
                        <TD><INPUT TYPE="Password" NAME="Password" SIZE="40"></TD>
                    </TR>
                    <TR>
                        <TD align=center><INPUT TYPE="Submit" VALUE="Login">
                            &        <INPUT TYPE="RESET"></TD>
                    </TR>
                </TABLE>
            
        </FORM>
        <a href="Register.jsp">If you have not yet got an account please click here!</a>
</html>
