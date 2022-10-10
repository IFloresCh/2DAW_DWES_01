<%-- 
    Document   : hotel
    Created on : 27 sept 2022, 17:00:30
    Author     : daw
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" import="java.util.ArrayList"%>
<%!
    private static final int NUM_PLANTES = 5;
    private static final int NUM_HAB = 10;
    private static final int MAX_CLIENTS = 5;


//random
    private int rand(int min, int max) {
    return (int) (Math.random() * (max+1 - min) + min);
    }
    
//llistat de ocupadas
    private int[] ocupacio(int[][] hotel){
    int [] ocupades = new int[NUM_PLANTES];
    int counter = 0;
    for (int i = 0; i < NUM_PLANTES; i++) {
        for (int j = 0; j <NUM_HAB; j++){
            if(hotel[i][j]>0){
                counter++;
            }
        }
        ocupades[i] = counter;
        counter=0;  
        }
    
    return ocupades;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
//inicialització hoteles
        int[][] clients = new int[NUM_PLANTES][NUM_HAB];
        
        for (int i = 0; i < NUM_PLANTES; i++) {
            for (int j = 0; j <NUM_HAB; j++){
                clients[i][j] = rand(0, MAX_CLIENTS);
        }
    }
%>


        <h1>Gestió d'un hotel</h1>
        <ul>
<%
//llistat de les taules
    for(int i = 0; i <NUM_PLANTES;i++){
        for (int j=0; j<NUM_HAB;j++){
            switch(clients[i][j]){
            case 0:  %>
            <li style="color: green">Planta <%=i+1 %> Habitacion <%=j+1 %> està buida</li>
            <%		break;
            case MAX_CLIENTS: %>
            <li style="color: red">Planta <%=i+1 %> Habitacion <%=j+1 %> està plena.</li>
            <%		break;
            default: %>
            <li>Planta <%=i+1 %> Habitacion <%=j+1 %> té <%=clients[i][j]%> clients</li>
            <%		
            }
        }
    }
%>

</ul>
<ul>
<%
    int[] ocupadas = new int[NUM_PLANTES];
    ocupadas = ocupacio(clients);
    for(int i=0; i<NUM_PLANTES;i++){
        %><li>La Planta <%=i+1%> tiene <%=ocupadas[i]%> Habitaciones ocupadas</li><br><%    // valores int
        //out.println("La Planta "+i+ " tiene "+ocupadas[i]+ " habitaciones ocupadas<br>");// solo strings
        }
%>
</ul>

    </body>
</html>
