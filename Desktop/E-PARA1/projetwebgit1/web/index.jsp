

<%@page import="entities.Client"%>
<%@page import="services.ClientService"%>
<%@page import="entities.Produit"%>
<%@page import="services.ProduitService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Catalogue</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>        
        <fieldset>
                <legend>Liste des Produits</legend>
                <table border="1">
                    <thead>
                        <tr>
                             <th>Nom</th>
                            <th>Designation</th>
                            <th>Description</th>
                            <th>Prix</th>
                            <th>Unité</th>
                           
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ProduitService ps = new ProduitService();
                            for(Produit p : ps.findAll()){
                        %>
                        <tr>
                            <td><%= p.getNom() %></td>
                            <td><%= p.getDesignation()%></td>
                            <td><%= p.getDescription()%></td>
                            <td><%= p.getPrix()%></td>
                            <td> <%=p.getUnite()%> </td>
                        </tr>
                        
                        <%}%>
                    </tbody>
                </table>

        </fieldset>
    </body>
</html>
