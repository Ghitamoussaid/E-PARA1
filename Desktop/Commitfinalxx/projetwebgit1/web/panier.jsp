<%@page import="java.util.List"%>
<%@page import="entities.LigneCommande"%>
<%@page import="services.LigneCommandeService"%>
<%@page import="entities.Client"%>
<%@page import="services.ClientService"%>
<%@page import="entities.User"%>
<%@page import="services.PanierService"%>
<%@page import="entities.Panier"%>
<%@page import="services.CommandeService"%>
<%@page import="entities.Produit"%>
<%@page import="services.ProduitService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="ClientHeader.jsp" %>
<%
    
		    
    User u = (User)session.getAttribute("user");
                    
		%>
<html>
    <head>
        
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="styles.css" />
        <title>E-PARA</title>
        
    </head>
    <body style="background-color: #11e6f4;">
         
        <fieldset>
            <legend>Mon Panier</legend>
            <form method="POST" action="Commander.jsp">
                
                <div class="row my-5">
                    
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                   
                                    <th scope="col" width="50">#</th>
                                     <th scope="col">Image</th>
                                    <th scope="col">Produit</th>
                                    <th scope="col">Designation</th>
                                    <th scope="col">Prix</th>    
                                    <th scope="col">Quantité</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <%   double total = 0;
                                    HttpSession sessio = request.getSession();
                                    PanierService ps = new PanierService();
                                     
                                    int i = 0;
                                    if (ps.findAll() != null) {
                                        for (Panier p : ps.findAll()) {
                                            if(u.getId()== p.getClient().getId()){
                                            total += p.getQte() * p.getProduit().getPrix();

                                %>
                                <tr>
                                    <th scope="row"><%=++i%></th>
                                    <td><img src="images/<%= p.getProduit().getImage()%>" Height="50px" Weight="50px" /></td>
                                    <td><%= p.getProduit().getNom()%></td>
                                    <td><%= p.getProduit().getDesignation()%></td>
                                    <td><%= p.getProduit().getPrix()%></td>
                                    <td><%= p.getQte()%></td>
                                    
                             </tr>

                                <%}}}%>
                               
                            </tbody>
                        </table>
                                <h6 style="text-align: center;">Total: <%=total%></h6>
                            <input style="color: white; background: #52d3ed; padding: 1px 30px;margin: 0 20px;" type="submit" value="Commander" name="Commander" />
 
                    </div>
                </div>
            </form>
        </fieldset>
    </body>
</html>
