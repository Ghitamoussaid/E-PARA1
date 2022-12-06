<%-- 
    Document   : creerCompte
    Created on : 29 nov. 2022, 00:35:23
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
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="styles.css" />
    <title>E-PARA</title>
</head>

<body style="background: #e9ecef;">
        
        <!-- /#sidebar-wrapper -->
    <div id="page-content-wrapper">
        <fieldset>
            <legend>
                Créer Compte
            </legend>
            <form action="createCompte" method="POST" >
                            <div class="row my-5">
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <tbody>
                                <tr>
                                    <th scope="col">Nom :</th>
                                    <th scope="col"><input type="text" name="nom"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Prenom :</th>
                                    <th scope="col"><input type="text" name="prenom"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Téléphone :</th>
                                    <th scope="col"><input type="text" name="tele"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Adresse :</th>
                                    <th scope="col"><input type="text" name="adresse"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Email :</th>
                                    <th scope="col"><input type="text" name="email"></th>
                                </tr>
                                <tr>
                                    <th scope="col">Mot de passe :</th>
                                    <th scope="col"><input type="password" name="password"></th>
                                </tr>                              
                            </tbody>
                            
                        </table>
                        
                <input style="color: white; background: #52d3ed; padding: 1px 30px;margin: 0 20px;" type="submit" value="Ajouter" name="ajouter" />
                    </div>
                </div>
                
            </form>
        </fieldset>
    </div>
    </body>
</html>
