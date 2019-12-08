<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomeSwitchHome | Espace Client</title>
</head>
<body>

<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	
		if(session.getAttribute("identifiant")==null)
		{
			response.sendRedirect("login.jsp");
		}
%>

	Bienvenue ${username}
	<form action= "Logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>