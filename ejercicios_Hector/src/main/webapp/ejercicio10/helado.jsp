<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/helado.css"/>
	<title>Máquina de helados</title>
</head>
<body>
	<h1>Aquí tiene su tarrina de helado</h1>
	
	<%
	int chocolate = Integer.valueOf(request.getParameter("choc"));
	int fresa = Integer.valueOf(request.getParameter("fresa"));
	int vainilla = Integer.valueOf(request.getParameter("vainilla"));
	
	if((chocolate + fresa + vainilla) > 100){
		
		out.println("La suma de los porcentajes debe ser menor o igual que 100.");
		out.println("Por favor, introduzca de nuevo los porcentajes");
	}else{
	%>
	
		<div id="tarrina">
		
		    <p id="chocolate" style="height: <%= chocolate %>px;">
		    	<% if(chocolate > 0){ %>
		    		Chocolate <%= chocolate %>%
		    	<% } %>
		    </p>
		    
		    <p id="fresa" style="height: <%= fresa %>px;">
		    	<% if(fresa > 0){ %>
		    		Fresa <%= fresa %>%
		    	<% } %>
		    </p>
		    
		    <p id="vainilla" style="height: <%= vainilla %>px;">
   		    	<% if(vainilla > 0){ %>
		    		Vainilla <%= vainilla %>%
		    	<% } %>
		    </p>
		</div>
		
	<%	
	}
	%>

</body>
</html>