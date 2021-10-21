<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sconosciuto</title>
</head>
	<body>
	<h3>BENVENUTO, ma chi sei?</h3><br>
	<% String nomeCheMiArrivaDaServlet = (String)request.getAttribute("nomeAttribute"); %>
	<% String cognomeCheMiArrivaDaServlet = (String)request.getAttribute("cognomeAttribute"); %>
	Purtroppo non ti ho riconosciuto <%= nomeCheMiArrivaDaServlet + " " +  cognomeCheMiArrivaDaServlet %>
	<br>
	<br>
	<br>
	<a href="index.jsp">HOME</a>
	</body>
</html>