<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Configurador interior vehículo</title>
</head>
<body>
	<% 
	String color = request.getParameter("color");
	String material = request.getParameter("material");
	
	out.println("El interior elegido tendrá la tapicería en color " + color.toLowerCase() +
			"<br>" + "y las molduras terminadas en " + material.toLowerCase() + ".");
	%>
</body>
</html>