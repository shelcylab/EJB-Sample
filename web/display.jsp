<%-- 
    Document   : display
    Created on : 13 Nov, 2020, 6:18:50 PM
    Author     : shelc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="processInfo.jsp" method="post">
            <p><b>Person First Name:</b>
                <input type="text" name='firstName'/>
            </p>
            <p><b>Person Last Name:</b>
                <input type="text" name='lastName'/>
            </p>
            <p><b>Person Age:</b>
                <input type="text" name='age'/>
            </p>
            <input type="submit" name="add" value="Add"/>
        </form>
    </body>
</html>



