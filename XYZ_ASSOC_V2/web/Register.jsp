<%-- 
    Document   : Register
    Created on : 30-Nov-2016, 00:14:16
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
  </table>
  <p>
    <input type="submit" name="Submit" value="Submit" >
  </p>
</form>
    </body>
</html>
