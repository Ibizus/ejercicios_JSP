<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conversor dolares-euros</title>
</head>
<body>

<%
double resultado;
String dolares = "";
try{
	dolares = request.getParameter("dolares");	
	resultado = Double.parseDouble(request.getParameter("dolares")) * 0.93;
	
}catch(Exception e){
	resultado = 0;
}
%>

 <%
 out.println("<h1>Ejercicio 4: Conversor de dólares a euros</h1><table border=1><tr><td>Dólares</td><td>Euros</td></tr><tr><td>" +
 dolares + "</td><td>" + resultado + "</td></tr></table>");
 %>

</body>
</html>