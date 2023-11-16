<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/style.css"/>
	<title>Ejercicio 10</title>
</head>
<body>
	<h1>Máquina de helados</h1>
	<p>Seleccione los porcentajes para preparar un helado a su gusto</p>
	
	<section id="formulario">
		<form method="post" action="helado.jsp">
		
			<section id="sabores">
				<article>
					<img alt="Chocolate" src="images/chocolate.jpeg">
					% Chocolate <input type="number" min="0" max="100" step="1" name="choc">
				</article>
				<article>
					<img alt="Fresa" src="images/fresa.jpeg">
					% Fresa <input type="number" min="0" max="100" step="1" name="fresa">
				</article>
				<article>
					<img alt="Vainilla" src="images/vainilla.jpeg">
					% Vainilla <input type="number" min="0" max="100" step="1" name="vainilla">
				</article>
			</section>
	
			<input id="enviar" type="submit" value="Preparar helado">
		</form>
	</section>

</body>
</html>