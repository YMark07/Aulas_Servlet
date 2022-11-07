<%-- 
    Document   : page3
    Created on : 7 de nov de 2022, 14:30:03
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
         String errorMessage=null;
         boolean hasParameterN = request.getParameter("n")!=null;
         
         int n=0;
         try{
             n= Integer.parseInt(request.getParameter("n"));
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
        <title>JSP tabuada</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Tabuada</h2>
         <form>
             <input type="number" step='1' name="n"/>
             <input type="submit" value="Gerar"/>
         </form>
                 <% if(hasParameterN && errorMessage !=null){%>
         <div style="color:red"><%=errorMessage%></div>
         <%}%>
         
           <%if(hasParameterN){%>
        <table border=1>
        <%for(int i=1;i<=10;i++){%>
        <tr>
            <td><%=i%></td><td>X</td><td><%=n%></td><td><%=i*n%></td>
        
        </tr>
        <%}%>
        </table>
        <%}%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
