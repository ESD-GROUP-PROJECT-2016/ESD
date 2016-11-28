
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WELCOME TO XYZ DRIVERS</title>
    </head>
    <body>

        <form action="MemberLogin.do" method="POST">
  <TABLE BORDER=0>
    <TR>
      <TD>Client ID:</TD>
     <TD> <INPUT TYPE="Text" NAME="UserName" SIZE="40"></TD>
     </TR>
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
<a href="MemRegister.jsp">If you have not yet got an account please click here!</a>
        </body>

</html>
