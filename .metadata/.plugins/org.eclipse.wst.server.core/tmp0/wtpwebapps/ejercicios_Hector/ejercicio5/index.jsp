<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ecuación cuadrática</title>
</head>
<body>
	<h1>Ejercicio 5: Despeja la x</h1>
	<h3>ax² + bx + c = 0</h3>
	<h3>Introduce los valores de a, b y c para hallar la x:</h3>
	
	<form method="post" action="despejaX.jsp">
		a:
		<input type="text" name="a">
		<br>
		b:
		<input type="text" name="b">
		<br>
		c:
		<input type="text" name="c">
		<br>
		<input type="submit" value="Enviar">
	</form>
</body>
</html>