<%-- 
    Document   : index
    Created on : 19 sept 2022, 17:05:31
    Author     : daw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <span>
            <p>Avui és <%= new java.util.Date()%></p>
        </span>
        <span>
            <strong>
            <% String[] nombres = {"Ana","Luis","Rodrigo","Virginia"};
            int cuantos= nombres.length;
            
            for (int i =0;i<cuantos;i++){
                out.println(nombres[i] + "<br>");
                }
            %>
            </strong>
        </span>
        
            <%
            String datoUno = request.getParameter("dato1");
            String datoDos = request.getParameter("dato2");
            
            out.println(datoUno + "<br>");
            
            out.println(datoDos);
            %>
            
        
            
            
            
            
        
    </body>
</html>
