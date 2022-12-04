<%@page import="entities.Client"%>
<%@page import="services.ClientService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Authentification</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="load.jsp" method="post">
            <fieldset>
                <legend>Authentification</legend>
                <table border="0">
                 
                        <tr>
                            <td>Email :</td>
                            <td><input type="text" name="email" value="" /></td>
                            <td>*</td>
                        </tr>
                        <tr>
                            <td>Password :</td>
                            <td><input type="password" name="password" value="" /></td>
                            <td>*</td>
                        </tr> 
                        <tr>
                            <td><input type="submit" value="Se connecter" name="submit" /> </td>                           
                        </tr>
                </table>

                
            </fieldset>
        </form>
    </body>
</html>

