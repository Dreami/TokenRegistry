<%-- 
    Document   : index
    Created on : 26/02/2018, 04:32:15 PM
    Author     : TecMilenio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="tokenPackage.Slave"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String tokens = "<td>10</td>"
            + "<td>Juan Doe</td>"
            + "<td>Administrador</td>"
            + "<td>2</td>,"
            + "<td>11</td>"
            + "<td>Sergio Ruiz</td>"
            + "<td>Gerente</td>"
            + "<td>1</td>";

    request.getSession().setAttribute("tokens", tokens);
%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Slaves Registry</title>
    </head>
    <body>
        <h1>Token Registry:</h1>
        <table>
            <thead>
                <th>ID</th>
                <th>Name</th>
                <th>Role</th>
                <th>Freedom</th>
            </thead>
            <tbody>
                <c:forTokens items="${tokens}" delims="," var="slave">
                    <tr>
                        ${slave}
                    </tr>
                </c:forTokens>
            </tbody>
        </table>
    </body>
</html>
