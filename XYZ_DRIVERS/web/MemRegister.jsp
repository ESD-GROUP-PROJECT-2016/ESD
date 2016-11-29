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
        <form action="RegisterUser.do" method="post"name="frmAddCustomer"> 
            <!--onsubmit="return validateuser1()">-->
  <table width="329" border="0" cellspacing="3">
<<<<<<< HEAD:XYZ_DRIVERS/web/MemRegister.jsp
=======
    <tr>
      <td width="74" ><div align="left">Username: </div></td>
      <td width="242"><input name="txtUserName" type="text"></td>
    </tr>
>>>>>>> refs/remotes/origin/master:XYZ_DRIVERS/web/Initialization/MemRegister.jsp
      <tr >
      <td width="74" ><div align="left">First Name: </div></td>
      <td width="242"><input name="txtFirstName" type="text"></td>
    </tr>
    <tr>
      <td><p align="left">Surname:</p></td>
      <td><input name="txtlastname" type="text" id="txtlastname"></td>
    </tr>
      <tr>
      <td><p align="left">Address line 1:</p></td>
      <td><input name="txtaddressln1" type="text" id="txtaddressln1"></td>
    </tr>
    <tr>
      <td><p align="left">Address line 2:</p></td>
      <td><input name="txtaddressln2" type="text" id="txtaddressln2"></td>
    </tr>
    <tr>
      <td><p align="left">Postcode:</p></td>
      <td><input name="txtpostcode" type="text" id="txtpostcode"></td>
    </tr>
    <tr>
      <td ><div align="left">Date of Birth:</div></td>
      <td><input type="text" name="txtdob"></td>
    </tr>
<<<<<<< HEAD:XYZ_DRIVERS/web/MemRegister.jsp
=======
    <tr>
      <td><div align="left">Password:</div></td>
      <td><input type="password" name="txtpassword"></td>
    </tr>
>>>>>>> refs/remotes/origin/master:XYZ_DRIVERS/web/Initialization/MemRegister.jsp
  </table>
  <p>
    <input type="submit" name="Submit" value="Submit" >
  </p>
</form>
    </body>
</html>
