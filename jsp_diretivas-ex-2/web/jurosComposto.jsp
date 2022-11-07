<%-- 
    Document   : jurosComposto
    Created on : 7 de nov de 2022, 16:05:27
    Author     : Fatec
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.math.MathContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
         String errorMessage=null;
         boolean hasParameterT = request.getParameter("t")!=null;
         boolean hasParameterJ = request.getParameter("j")!=null;
         boolean hasParameterC = request.getParameter("c")!=null;
         
         DecimalFormat df = new DecimalFormat("#.00");
         double j=0,c=0,montante=0;
         int t=0;
         try{
             t= Integer.parseInt(request.getParameter("t"));
             j= Integer.parseInt(request.getParameter("j"));
             c= Integer.parseInt(request.getParameter("c"));
             j=j/100;
             montante= Math.round(c* Math.pow(1+j,t));
             
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
        <title>JSP - Juros Composto</title>
    </head>
    <body>
                <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Juros Composto</h2>
         <form>
             Capital:<input type="number" step='1' name="c"/>
             Taxa de Juros(%):<input type="number" step='1' name="j"/>
             Quantidade de meses: <input type="number" step='1' name="t"/>
             <input type="submit" value="Gerar"/>
         </form>
                 <% if(hasParameterC && hasParameterJ && hasParameterT && errorMessage !=null){%>
         <div style="color:red"><%=errorMessage%></div>
         <%}%>
         
           <%if(hasParameterT && hasParameterJ && hasParameterC){ 
           %>
           <h3><%=df.format(montante)%></h3>
           <%}%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
