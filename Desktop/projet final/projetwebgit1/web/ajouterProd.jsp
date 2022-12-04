<%-- 
    Document   : ajouterProd
    Created on : 21 nov. 2022, 12:15:06
    Author     : hp
--%>

<%@page import="entities.Categorie"%>
<%@page import="services.CategorieService"%>
<%@page import="entities.Marque"%>
<%@page import="services.MarqueService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="UTF-8">
    
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
                        class="fas fa-plus me-2"></i>Consulter Commandes</a>  
                <a href="http://localhost:8080/afficheCommande.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fa fa-list-alt me-2"></i>Consulter Commandes</a>  
                <a href="http://localhost:8080/gestionCommande.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fa fa-cog me-2"></i>Gérer Commandes</a> 
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
            <legend>
                Ajouter un produit 
            </legend>
            <form action="add" method="POST" >
                            <div class="row my-5">
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <tbody>
                                <tr>
                                    <th scope="col">Nom :</th>
                                    <th scope="col"><input type="text" name="nom"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Designation :</th>
                                    <th scope="col"><input type="text" name="designation"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Prix :</th>
                                    <th scope="col"><input type="text" name="prix"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Unité :</th>
                                    <th scope="col"><input type="number" name="unite"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Description :</th>
                                    <th scope="col"><input type="text" name="description"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Image :</th>
                                    <th scope="col"><input type="file" name="image"></th>
                                </tr>
                               
                            </tbody>
                            
                        </table>
                        <label>Marque :</label>
                <select name="marque">
                    <%
                        MarqueService ms = new MarqueService();
                        for (Marque m : ms.findAll()) {
                    %>
                    <option><%= m.getNom()%></option>
                     <%}%>
                </select>
                <label>Categorie :</label>
                <select name="categorie">
                    <%
                        CategorieService cs = new CategorieService();
                        for (Categorie c : cs.findAll()) {
                    %>
                    <option><%= c.getNom()%></option>
                     <%}%>
                </select>
                <input style="color: white; background: #52d3ed; padding: 1px 30px;margin: 0 20px;" type="submit" value="Ajouter" name="ajouter" />
                    </div>
                </div>
                
            </form>
        </fieldset>
    </div>
    </body>
</html>



