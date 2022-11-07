<%-- 
    Document   : page2
    Created on : 7 de nov de 2022, 14:29:33
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Data e hora</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Data e hora</h2>
        <%
        Date now = new Date();
        
        out.println("<h2>A data de agora é "+ now+"</h2>");
        %>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
