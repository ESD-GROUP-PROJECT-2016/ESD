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
        <title>Welcome</title>
    </head>
    <body>
        <h1>Welcome to XYZ Drivers Association</h1>
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

