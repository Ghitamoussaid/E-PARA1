<%@ page language="java" %>
<%@ page import="entities.User" %>
<html>
	<head>
		<title>Page d'accueil</title>
	</head>
	<body>
		<%
		    User u = (Client)session.getAttribute("user");
                    
		%>
		<h1 align='center'> 
		Votre Login est :<%= u.getEmail()%><br/>
		Votre mot de passe est :<%= u.getPassword()%><br/>
		</h1>
	</body>
</html>
