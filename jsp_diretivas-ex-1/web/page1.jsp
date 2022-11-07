<%-- 
    Document   : page1
    Created on : 7 de nov de 2022, 14:25:53
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Numeros aleatorios</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
<h2>Tabela com numeros aleatorioso</h2>
<%
     out.println("<table border=1>");
            out.println("<tr>");
            out.println("<th> Indice </th>");
            out.println("<th> Numero </th>");
            out.println("</tr>");
            int i = 1;
            while (i<=10){
                int n = (int) (100*Math.random());
                if (n%2==0){
                    out.println("<tr>");
                    out.println("<th> "+i+" </th>");
                    out.println("<th> "+n+" </th>");
                    out.println("</tr>");
                    i++;
            }
        }
            out.println("</table>");
%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
<%@include file="WEB-INF/jspf/footer.jspf"%>
