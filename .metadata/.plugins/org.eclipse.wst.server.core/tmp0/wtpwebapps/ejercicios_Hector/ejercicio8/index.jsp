<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 8</title>
</head>
<body>
	<h1>Ejercicio 8: Configurador coche</h1>
	
	<form method="post" action="interior.jsp">
		<br>
		Elije el color de la tapicería: 
		<select name="color">
			<option>Blanco</option>
			<option>Negro</option>
			<option>Berenjena</option>
		</select>
				<br>
		Elije el material de las molduras: 
		<select name="material">
			<option>Madera</option>
			<option>Carbono</option>
		</select>
		<br>
		<input type="submit" value="Enviar">
	</form>
</body>
</html>