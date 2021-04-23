<%@page import="java.util.List"%>
<%@page import="Bean.Person"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>The details you entered : </h1>

        <%ArrayList<Person> std
                    = (ArrayList<Person>) request.getAttribute("peso");
            for (Person s : std) {%> 
        <%-- Arranging data in tabular form 
        --%> 
    <tr> 
    <p><b>Person First Name:</b>
    <td><%=s.getFirstName()%></td> 
    <p><b>Person Last Name:</b>
    <td><%=s.getLastName()%></td> 
    <p><b>Person Age:</b>
    <td><%=s.getAge()%></td> 
</tr> 
<%}%> 
</body>
</html>