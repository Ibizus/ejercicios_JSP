<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calcula el calendario seleccionado</title>
</head>
<body>

<%
	int ano = Integer.valueOf(request.getParameter("year"));
	String mesStr = request.getParameter("mes");
	int mes = 0;
	
	switch(mesStr){
		case "Enero":
			mes = 0;
			break;
		case "Febrero":
			mes = 1;
			break;
		case "Marzo":
			mes = 2;
			break;
		case "Abril":
			mes = 3;
			break;
		case "Mayo":
			mes = 4;
			break;
		case "Junio":
			mes = 5;
			break;
		case "Julio":
			mes = 6;
			break;
		case "Agosto":
			mes = 7;
			break;
		case "Septiembre":
			mes = 8;
			break;
		case "Octubre":
			mes = 9;
			break;
		case "Noviembre":
			mes = 10;
			break;
		case "Diciembre":
			mes = 11;
			break;
	}

	Calendar calendario = Calendar.getInstance();
	calendario.set(Calendar.YEAR, ano);
	calendario.set(Calendar.MONTH, mes);
	
	int numDays = calendario.getActualMaximum(Calendar.DATE);
	
	for(int dia = 1; dia <= numDays; dia++){
		
		calendario.set(Calendar.DAY_OF_MONTH, dia);
		Date fecha = calendario.getTime();
		
		SimpleDateFormat formato = new SimpleDateFormat("EEE d MMM yyyy");
		out.println(formato.format(fecha) + "<br>");
	}
%>

</body>
</html>