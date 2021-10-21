<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
	Benvenuto in Dimmi chi sei.
	<br>
	<form action="CheckPresenzaServlet" method="post">
	Dimmi chi sei, come ti chiami?<br>
		<input type="text" name="nomeInput"><br>
		<br>
		<input type="text" name="cognomeInput"><br>
		<br>
		<input type="submit" value="Conferma"><br>
	</form>
</body>
</html>