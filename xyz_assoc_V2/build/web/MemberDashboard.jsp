<%-- 
    Document   : PostLogin
    Created on : 30-Nov-2016, 00:32:02
    Author     : Lewis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
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
    <body>
        <h1>XYZ Drivers Association</h1>
        <h2>Welcome to your dashboard</h2>
        <form method="POST" action="UserService.do">
        <p/>
            View a table <br/>
            <input type="radio" name="tbl" value="List">List Users<br />
            <input type="radio" name="tbl" value="NewUser">New User<br />
            <input type="radio" name="tbl" value="Update">Password Change<br />
            <input type="radio" name="tbl" value="Delete">Delete a User<br />
            <input type=submit value="Action"> <br />
        </form> 
    </body>
</html>

