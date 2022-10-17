<%-- 
    Document   : jspAutor
    Created on : 17 de out de 2022, 14:11:03
    Author     : Fatec
--%>

<%@page contentType="text/html" import="java.util.*, java.text.*"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- JSP é o acronimo de Java Server Pages que é uma linguagem de script com
        a finalidade de criar paginas web dinamicas e ela é gratuita e de codigo aberto.
        É nescessario ter um servidor para que o JSP funcione e o codigo não aparece no html-->
        
        <h1>Fatec - PG, Aula POO - Tarefa de JSP, JSPF e JSTL</h1>
        <h2>Nome: Yohan Gabriel Eduardo Queiroz dos Santos Ferreira Aquino</h2>
        <h2>RA:1290482112006</h2>
        
        <!-- Codigo onde eu escrevo no html a data e hora atualizada. -->
            <%
            int dia = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
            int mes = Integer.parseInt((new SimpleDateFormat("MM").format(new Date())));
            int ano = Integer.parseInt((new SimpleDateFormat("yyyy").format(new Date())));
            String hora= new SimpleDateFormat("HH:mm:ss z").format(new Date()).toString();
            out.println("<br>Hoje é dia " + dia+ " do mês "+ mes +" de "+ano);
            out.println("<br>O horario é: "+ hora);
            %>
            
            <!-- parte do JSPF, onde eu crio uma tabela com numeros aleatorios -->
            <%@ include file="jspfTabela.jspf" %>
    </body>
</html>
