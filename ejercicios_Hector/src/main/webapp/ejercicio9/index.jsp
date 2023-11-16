<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="style.css"/>
	<title>Ejercicio 9</title>
</head>
<body>
	<h1>Ejercicio 9: Tablero de ajedrez</h1>
	
	<table>
	<%
	// Genero posiciones aleatorias:
	int i_alfil = (int)(Math.random()*8);
	int j_alfil = (int)(Math.random()*8);
	int i_caballo;
	int j_caballo;
	do{
		i_caballo = (int)(Math.random()*8);
		j_caballo = (int)(Math.random()*8);
		
	}while(i_alfil==i_caballo && j_alfil==j_caballo);

	for(int i=0; i<8; i++){
	%>
		<tr>
		<% for(int j=0; j<8; j++){ 
		%>
			<td width="50px" height="50px" bgcolor="
				<% 
				if((i+j) %2 == 0){
				%>
					black
				<%
				}else{
				%>
					white
				<%
				}
				%>
			"><img src="images/
				
				<%
				if(i==i_alfil && j==j_alfil){
				%>
					alfil
				<%	
				}else if(i==i_caballo && j==j_caballo){
				%>	
					caballo
				<%	
				}
				%>
			
			.png" alt="">
			</td>
			<%
			} 
			%>		
		</tr>
	<%
	}
	%>
	</table>

</body>
</html>