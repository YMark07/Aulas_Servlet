<%-- 
    Document   : soma
    Created on : 31 de out de 2022, 14:23:31
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

         <%
         String errorMessage=null;
         boolean hasParameterN1 = request.getParameter("n1")!=null;
         boolean hasParameterN2 = request.getParameter("n2")!=null;
         
         double n1=0,n2=0,soma=0;
         try{
             n1= Double.parseDouble(request.getParameter("n1"));
             n2= Double.parseDouble(request.getParameter("n2"));
             soma=n1+n2;
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
        <title>JSP Soma</title>
    </head>
    <body>

         <h3>Soma</h3>
         <form>
             <input type="number" step='0.1' name="n1"/>+
             <input type="number" step='0.1' name="n2"/>
             <input type="submit" name="somar" value="="/>
         </form>
         
         <% if(hasParameterN1 && hasParameterN2 && errorMessage !=null){%>
         <div style="color:red"><%=errorMessage%></div>
         <%}%>
         <%if(hasParameterN1 && hasParameterN2){%>
         <h3><%=n1%> + <%=n2%> = <%=soma%></h3>
         <%}%>
    </body>
</html>
