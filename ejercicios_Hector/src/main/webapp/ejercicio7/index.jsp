<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 7</title>
</head>
<body>
	<h1>Ejercicio 7: Calendario mensual</h1>
	
	<form method="post" action="calendario.jsp">
		<br>
		Elije el mes: 
		<select name="mes">
			<option>Enero</option>
			<option>Febrero</option>
			<option>Marzo</option>
			<option>Abril</option>
			<option>Mayo</option>
			<option>Junio</option>
			<option>Julio</option>
			<option>Agosto</option>
			<option>Septiembre</option>
			<option>Octubre</option>
			<option>Noviembre</option>
			<option>Diciembre</option>
		</select>	
		<br>
        Elije el año: 
        <input type="number" name="year" id="year"
                min="0000" max="2050" step="1" value="2024">
		<br>
		<input type="submit" value="Crear calendario">
	</form>
	
</body>
</html>