<%-- 
    Document   : fitreCommande
    Created on : 28 nov. 2022, 23:54:06
    Author     : hp
--%>


<%@page import="entities.Commande"%>
<%@page import="services.CommandeService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entities.Produit"%>
<%@page import="services.ProduitService"%>
<%@page import="entities.Categorie"%>
<%@page import="services.CategorieService"%>
<!DOCTYPE html>
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
    
        <body style="background: #e9ecef;">
        <div class="d-flex" id="wrapper" >
        <!-- Sidebar -->
        <div class="bg-white" id="sidebar-wrapper">
            <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><img src="images/logo.PNG"/>
                 </div>
            <div class="list-group list-group-flush my-3">
                 <a href="Admin.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fas fa-tachometer-alt me-2"></i>Tableau de bord</a>
                <a href="http://localhost:8080/afficheCommande.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fa fa-list-alt me-2"></i>Consulter Commandes</a>  
                <a href="http://localhost:8080/gestionCommande.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fa fa-cog me-2"></i>Gérer Commandes</a> 
                <a href="http://localhost:8080/ajouterCat.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fas fa-plus me-2"></i>Ajouter Categorie</a>
                <a href="http://localhost:8080/ajouterMar.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-plus me-2"></i>Ajouter Marque</a> 
                <a href="http://localhost:8080/ajouterProd.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-plus me-2"></i>Ajouter Produit</a> 
                <a href="http://localhost:8080/ajouterUser.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-plus me-2"></i>Ajouter Client</a>        
                <a href="http://localhost:8080/SupprimerCat.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-minus me-2"></i>Supprimer Categorie</a>
                
                <a href="http://localhost:8080/supprimerMar.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-minus me-2"></i>Supprimer Marque</a>
                <a href="http://localhost:8080/supprimerProd.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-minus me-2"></i>Supprimer Produit</a>
                
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-comment-dots me-2"></i>Chat</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-map-marker-alt me-2"></i>Outlet</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
                        class="fas fa-power-off me-2"></i>Logout</a>
            </div>
        </div>
        <!-- /#sidebar-wrapper -->
        <div id="page-content-wrapper">      
        <fieldset>
            <legend>Liste des Commandes</legend>
            <form method="POST" action="filtrerCommande">
                
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

                                <%
                                    String etat = request.getParameter("etat");
                                    CommandeService cs = new CommandeService();
                                    int i=0;
                                    for (Commande c : cs.findByEtat(etat)) {
                                        ++i;
                                %>
                                <tr>
                                    <th scope="row"><%= i%></th>
                                    <td><%= c.getClient().getNom()%></td>
                                    <td><%= c.getFacture().getMontant()%></td>
                                    <td><%= c.getDate()%></td>
                                    <td><%= c.getEtat()%></td>
                                </tr>

                                <%}%>
                            </tbody>
                        </table>

                    </div>
                </div>
            </form>
        </fieldset>
        </div>
        </div>
    </body>
</html>