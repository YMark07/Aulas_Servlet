<%-- 
    Document   : jspData
    Created on : 31 de out de 2022, 14:20:02
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        Date now = new Date();
        
        out.println("<h2>A data de agora é "+ now+"</h2>");
        %>
    </body>
</html>
