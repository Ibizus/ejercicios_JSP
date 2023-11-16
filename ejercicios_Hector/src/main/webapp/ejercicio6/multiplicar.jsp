<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tabla de multiplicar</title>
</head>
<body>

	<%
	String num = request.getParameter("numero");
	double numTabla = Double.parseDouble(num);
	out.println("<h1>Tabla del " + num + "</h1>");
	%>

	<table border=1>
	<%
	for(int i = 1; i <= 10; i++) {
	%>
		<tr>
		<td width="70px" height="10px">
		<% out.println(num + " * " + i); %>
		</td>
		<td width="50px" height="10px">
		<% out.println(String.format("%.1f", (i*numTabla))); %>
		</td>
		</tr>
		
	<%
	}
	%>
	</table>

</body>
</html>