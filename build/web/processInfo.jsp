<%-- 
    Document   : ProcessInfo
    Created on : 13 Nov, 2020, 6:20:06 PM
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
        <form action="InputServlet" method="post">
            <jsp:useBean id='date'  class='java.util.Date'/>
            <jsp:useBean id='person'  class='Bean.Person' scope="session" >
                <jsp:setProperty name='person' property='firstName'/>
                <jsp:setProperty name='person' property='lastName'/>
                <jsp:setProperty name='person' property='age'/>
            </jsp:useBean>
            <p>These are the values you entered:</p>
            <jsp:getProperty property="firstName" name="person"/><br> 
            <jsp:getProperty property="lastName" name="person"/><br> 
            <jsp:getProperty property="age" name="person" /><br>
            <input type="submit" name="confirm" value="Confirm"/>
        </form>

    </body>
</html>
