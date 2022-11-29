<%-- 
    Document   : Mpob
    Created on : 26 nov. 2022, 00:37:05
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset>
            <legend>Mot de passe oblié </legend>
            <form action="Mdob">
                <h3>Entrez votre E-mail pour envoyer un code sur votre e-mail</h3>
                <table>
                    <tr>
                        <td>E-mail</td>
                        <td><input type="email" name="email"></td>
                         <td><input type="submit" value="Envoyer"></td>
                    </tr>
                    <tr><td><h4><%= request.getParameter("msg")%></h4></td></tr>
                </table>
            </form>
        </fieldset>

    </body>
</html>
//Source : www.exelib.net
