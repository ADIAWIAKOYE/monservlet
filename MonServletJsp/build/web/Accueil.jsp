<%-- 
    Document   : Accueil
    Created on : 22 juil. 2022, 17:56:19
    Author     : aadiawiakoye
--%>

<%@page import="servlets.user"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1> Bienvenu  <%= request.getAttribute("nom") %> </h1>
        
        <form action="monservlet3" method="post">
        <input type="submit" name="inscrire" value="Déconnecter" class="btnInscris">
        </form>
        <table>
            <tr> 
                
                <th>NOM</th>
                <th>PRENOM</th>
                <th>PSEUDO</th>
                <th>EMAIL</th>
                   
            </tr>
            <%
            List<user> users=(ArrayList<user>) session.getAttribute("liste"); 
             for(user user : users){
                 %>
            <tr>
            
                
                <td><%out.print(user.getNom());%></td>
                <td><%out.print(user.getPrenom());%></td>
                <td><%out.print(user.getPseudo());%></td>
                <td><%out.print(user.getEmail());%></td>
            
            </tr>
            <%} %>

        </table>
        <style>
             *{
                box-sizing: border-box;
            }
            body{
                margin: 0;
                padding: 0;
                font-family: sans-serif;
                text-align: center;
                color: #000;
                background-color: #b9b5b5;
            }
            .btnInscris{
                width: 15%;
                font-size: 16px;
                outline: none;
                background-color: green;
                color: #fff;
                margin: 10px 0;
                padding: 10px;
                border: 1px solid #fff;
                border-radius: 10px;
            }
            table{
                    border-collapse: collapse;
                    margin-left: auto;
                    margin-right: auto;
                    
                  }

                  th, td{
                    border: 1px solid black;
                    padding: 10px;
                  }
        </style>
    </body>
</html>
