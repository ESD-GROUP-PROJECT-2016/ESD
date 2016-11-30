<%-- 
    Document   : Register
    Created on : 30-Nov-2016, 00:14:16
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script>
        $('.datepicker').pickadate({
            formatSubmit: 'yyyy-mm-dd'
        });
        $(document).ready(function () {
            $('select').material_select();
        });
        $("#lookup").click(function () {
            var postcode = $('#postcode').val();
            var apiKey = "AYNEiPCuzkyW_QpLcrtL8g6560";
            var url = "https://api.getAddress.io/v2/uk/" + postcode + "?api-key=" + apiKey;
            $.ajax({
                url: url,
                dataType: 'json',
                success: function (result) {
                    console.log(result.Addresses);
                    for (i = 0; i < result.Addresses.length; i++) {
                        $("#addressChooser").append("<option value='" + result.Addresses[i] + "'>" + result.Addresses[i] + "</option>");
                    }
                    $('select').material_select();
                    $("#submitButton").removeClass("disabled");
                }});
        });
    </script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
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
    <h1>XYZ Drivers Association</h1>
    <h2>Please enter your details to register...</h2>
    <body>
        <form action="NewUser.do" method="post"name="frmAddCustomer"> 
            <!--onsubmit="return validateuser1()">-->
  <table width="500" border="0" cellspacing="3">
      <tr>
          <td width="74" ><div align="left">First Name: </div></td>
          <td width="242"><input name="txtFirstName" type="text"></td>
      </tr>
      <tr>
          <td><p align="left">Surname:</p></td>
          <td><input name="txtlastname" type="text" id="txtlastname"></td>
      </tr>
      <tr>
          <td><div align="left">Date of Birth:</div></td>
          <td><input id="DOB" type="date" name="DOB"></td>     
      </tr>
      <tr>      
      <div>
          <input id="postcode" type="text" name="postcode">
          <label for="postcode">Postcode</label>
      </div>
  </tr>
      <button align="left" type="button" id="lookup" >Lookup Postcode
          <i>Search</i>
      </button>
      <select id="addressChooser" name="address">

  </select>
  <label>Select address</label>
      </div>
  </table>
  <p>
    <input type="submit" name="Submit" value="Submit" >
  </p>
</form>

    </body>
</html>
