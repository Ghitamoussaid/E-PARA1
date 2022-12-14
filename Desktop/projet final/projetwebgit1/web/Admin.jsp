<%@page import="entities.Marque"%>
<%@page import="services.MarqueService"%>
<%@page import="entities.Categorie"%>
<%@page import="services.CategorieService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entities.Produit"%>
<%@page import="services.ProduitService"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="UTF-8">
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="styles.css" />
    <title>E-PARA</title>
</head>

<body>
    <div class="d-flex" id="wrapper">
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

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
                    <h2 class="fs-2 m-0">Dashboard</h2>
                </div>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-user me-2"></i>Orchi Nouhaila
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Profile</a></li>
                                <li><a class="dropdown-item" href="#">Settings</a></li>
                                <li><a class="dropdown-item" href="#">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="container-fluid px-4">
                <div class="row g-3 my-2">
                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">720</h3>
                                <p class="fs-5">Products</p>
                            </div>
                            <i class="fas fa-gift fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">4920</h3>
                                <p class="fs-5">Sales</p>
                            </div>
                            <i
                                class="fas fa-hand-holding-usd fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">3899</h3>
                                <p class="fs-5">Delivery</p>
                            </div>
                            <i class="fas fa-truck fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">%25</h3>
                                <p class="fs-5">Increase</p>
                            </div>
                            <i class="fas fa-chart-line fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>
                </div>

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Liste des Produits</h3>
                    <div class="col">
                        <form action="filtreCategorieMarque.jsp" method="POST">
                            <table class="table bg-white rounded shadow-sm  table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col" width="50">#</th>
                                        <th scope="col">Image</th>
                                        <th scope="col">Produit</th>
                                        <th scope="col">Designation</th>
                                        <th scope="col">Prix</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <%
                                        ProduitService ps = new ProduitService();
                                        int i = 0;
                                        for (Produit p : ps.findAll()) {
                                    %>
                                    <tr>
                                        <th scope="row"><%= ++i%></th>
                                        <td><img src="images/<%= p.getImage()%>" height="50px" width="50px" ></td>
                                        <td><%= p.getNom()%></td>
                                        <td><%= p.getDesignation()%></td>
                                        <td><%= p.getPrix()%></td>
                                    </tr>

                                    <%}%>




                                </tbody>
                            </table>
                            <label>Categorie :</label>
                            <select name="categorie">
                                <%
                                    CategorieService cs = new CategorieService();

                                    for (Categorie c : cs.findAll()) {
                                %>
                                <option><%= c.getNom()%></option>
                                <%}%>
                            </select>
                            <label>Marque :</label>
                            <select name="marque">
                                <%
                                    MarqueService ms = new MarqueService();

                                    for (Marque m : ms.findAll()) {
                                %>
                                <option><%= m.getNom()%></option>
                                <%}%>

                            </select>

                            <input style="color: white; background: #52d3ed; padding: 1px 30px;margin: 0 20px;" type="submit" value="Filtrer" name="Filtrer" />


                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    var el = document.getElementById("wrapper");
    var toggleButton = document.getElementById("menu-toggle");

    toggleButton.onclick = function () {
        el.classList.toggle("toggled");
    };
</script>
</body>

</html>
