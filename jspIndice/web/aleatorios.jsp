<%-- 
    Document   : aleatorios
    Created on : 31 de out de 2022, 14:23:03
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

         <%
         String errorMessage=null;
         boolean hasParameterN = request.getParameter("n")!=null;
         
         double n=0;
         try{
             n= Double.parseDouble(request.getParameter("n"));
         }
         catch(Exception e)
         {
         errorMessage = e.getMessage();
             }
         %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP numeros aleatorios</title>
    </head>
    <body>
         <h3>Numeros Aleatorios</h3>
         <form>
             <input type="number" step='1' name="n"/>
             <input type="submit" value="Gerar"/>
         </form>
                 <% if(hasParameterN && errorMessage !=null){%>
         <div style="color:red"><%=errorMessage%></div>
         <%}%>
                 <%if(hasParameterN){%>
        <table border=1>
            <tr><td>Indice</td><td>Valor</td></tr>
        <%for(int i=1;i<=n;i++){%>
        <tr>
        <td><%=i%></td>
        <td><%=((int) (100*Math.random()))%></td>
        </tr>
        <%}%>
        </table>
        <%}%>
    </body>
</html>
