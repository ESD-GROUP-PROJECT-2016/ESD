<%-- 
    Document   : UserOptionPage
    Created on : 28-Nov-2016, 15:28:33
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
        <h1>This is expected to serve as a proper Web Page</h1>
        <form method="POST" action="MemberOptions.do">
        <p />
            View a table <br />
            <input type="radio" name="tbl" value="List">Make Claims<br />
            <input type="radio" name="tbl" value="NewUser">View Claims<br />
            <input type="radio" name="tbl" value="Update">Submit Payment<br />
            <input type="radio" name="tbl" value="Delete">Log-Out<br />
           
            <input type=submit value="Action"> <br />
        </form> 

    </body>
</html>
