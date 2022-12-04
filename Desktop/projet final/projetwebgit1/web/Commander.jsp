<%@page import="entities.Commande"%>
<%@page import="java.util.Date"%>
<%@page import="entities.Facture"%>
<%@page import="services.FactureService"%>
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
            <legend>Panier</legend>
            <form method="POST" action="">
                
                <div class="row my-5">
                    
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                   
                                    <th scope="col" width="50">#</th>
                                     <th scope="col">Client</th>
                                    <th scope="col">Facture</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Etat</th>    
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <%   double total = 0;
                                    PanierService ps = new PanierService();
                                    CommandeService cs = new CommandeService();
                                    FactureService fs = new FactureService();
                                    ClientService ccs =new ClientService();
                                    int i = 0;
                                    if (ps.findAll() != null) {
                                        for (Panier p : ps.findAll()) {
                                            if(u.getId()== p.getClient().getId()){
                                            total += p.getQte() * p.getProduit().getPrix();
                                            
                                   
                                            }
                                        }
                                    }

                                    Facture f = new Facture(new Date(),total)  ;    
                                    fs.create(f);
                                    cs.create(new Commande("En cours",new Date(),ccs.findById(u.getId()),fs.findById(f.getId())));
                                   
                                    
                                    int n=0;
                                    for (Commande c : cs.findAll()) {
                                        if(u.getId()== c.getClient().getId()){
                                        ++n;
                                %>
                                <tr>
                                    <th scope="row"><%= n%></th>
                                    <td><%= c.getClient().getNom()%></td>
                                    <td><%= c.getFacture().getMontant()%></td>
                                    <td><%= c.getDate()%></td>
                                    <td><%= c.getEtat()%></td>
                                </tr>

                                <%}}%>
                                <%   
                                    if (ps.findAll() != null) {
                                        for (Panier p : ps.findAll()) {
                                            if(u.getId()== p.getClient().getId()){
                                            ps.delete(p);

                                            }
                                        }
                                    }
                                    %>

                                
                               
                            </tbody>
                        </table>
  
                    </div>
                </div>
            </form>
        </fieldset>
    </body>
</html>

