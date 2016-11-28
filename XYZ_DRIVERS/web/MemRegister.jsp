<%-- 
    Document   : newjsp
    Created on : 28-Nov-2016, 16:45:16
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript" src="user/scripts.js"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
       <form action="RegisterUser.do" method="post"name="frmAddCustomer"  onsubmit="return validateuser1()">
  <table width="329" border="0" cellspacing="3">
    <tr >
      <td width="74" ><div align="left" class="style1">User-name: </div></td>
      <td width="242"><input name="txtUserName" type="text"></td>
    </tr>
      <tr >
      <td width="74" ><div align="left" class="style1">First name: </div></td>
      <td width="242"><input name="txtFirstName" type="text"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Surname:</p></td>
      <td><input name="txtlastname" type="text" id="txtlastname"></td>
    </tr>
      <tr>
      <td><p align="left" class="style1">Address line 1:</p></td>
      <td><input name="txtaddressln1" type="text" id="txtaddressln1"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Address line 2:</p></td>
      <td><input name="txtaddressln2" type="text" id="txtaddressln2"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Postcode:</p></td>
      <td><input name="txtpostcode" type="text" id="txtpostcode"></td>
    </tr>
    <tr>
      <td ><div align="left" class="style1">Date of Birth:</div></td>
      <td><input type="text" name="txtdob"></td>
    </tr>
    <tr >
      <td><div align="left" class="style1">Password:</div></td>
      <td><input type="password" name="txtpassword"></td>
    </tr>
  </table>
  <p>
    <input type="submit" name="Submit" value="Submit" >
  </p>
</form>
    </body>
</html>
