<%-- 
    Document   : Register
    Created on : 30-Nov-2016, 00:14:16
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script>
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
    <h1>XYZ Drivers Association</h1>
    <h2>Please enter your details to register...</h2>
    <body>
        <form action="NewUser.do" method="post"name="frmAddCustomer"> 
            <!--onsubmit="return validateuser1()">-->
            <table align="center" width="500" border="0" cellspacing="3">
                <tr>
                <div>
                    <td><label for="firstname">First Name:</label></td>
                    <td><input id="firstname" type="text" name="firstname"></td>
                </div>
                </tr>
                <tr>
                <div>
                    <td><label for="surname">Surname: </label></td>
                    <td><input id="surname" type="text" name="surname"></td>
                </div>
                </tr>
                <tr>
                <div>
                    <td><label for="dob">Date of Birth:</label></td>
                    <td> <input id="DOB" type="date" name="DOB"></td>
                </div>
                </tr>
                <tr>      
                <div>
                    <td><label for="postcode">Postcode</label></td>
                    <td> <input id="postcode" type="text" name="postcode"></td>
                </div>
                <td><button align="left" type="button" id="lookup" >Lookup Postcode
                    </button>
                <tr>
                    <td><label>Select address</label></td>
                    <td><select id="addressChooser" name="address"></select></td>
                </tr>               
                </div>
                <tr>
                </tr>
                <tr>

                    <td><td><input type="submit" name="Submit" value="Submit" ></td></td>
                </tr>
            </table>    
        </form>
    </body>
</html>
