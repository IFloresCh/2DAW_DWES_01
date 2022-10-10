<%-- 
    Document   : formulario
    Created on : 4 oct 2022, 17:01:24
    Author     : daw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String text = request.getParameter("Texto");
            out.println(text);
            char string[] = text.toCharArray();
            
            for (int i=0;i<text.length();i++){
            
            }
                
            
        %>
        
        <table>
            <% for (int i=0;i<string.length;i++){
                    
             %>
             <tr><td> <%=i%> </td><td> <%=-i%> </td></tr>
             <% }
             %>
          </table>
        <%
            
        %>
    </body>
</html>
