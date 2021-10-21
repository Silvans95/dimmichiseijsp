<%@page import="it.prova.model.Persona"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Benvenuto</title>
</head>
	<body>
	<h3>BENVENUTO</h3><br>
	<% Persona personaCheMiArriva = (Persona)request.getAttribute("personaAttribute"); %>
	Come stai <%= personaCheMiArriva.getNome() + " " +  personaCheMiArriva.getCognome() %>?
	<br>
	<br>
	<br>
	<a href="index.jsp">HOME</a>
	</body>
</html>