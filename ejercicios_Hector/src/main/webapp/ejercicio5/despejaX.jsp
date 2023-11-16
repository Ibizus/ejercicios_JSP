<%--despejax.jsp --%>
<%@page import="java.math.MathContext"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.math.BigDecimal"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Despeja la X: ejercicio 5</title>
</head>
<body>
<%

String salida = "El valor de la \"x\" es: ";
try{
	String a = request.getParameter("a");
	String b = request.getParameter("b");
	String c = request.getParameter("c");

	BigDecimal a_BD = new BigDecimal(a);
	BigDecimal b_BD = new BigDecimal(b);
	BigDecimal c_BD = new BigDecimal(c);
	
	// Desglosamos las partes de la ecuación en conjuntos de valores para simplificar la operación final:
	BigDecimal val_4ac = new BigDecimal("4").multiply(a_BD.multiply(c_BD));
	BigDecimal val_menos_b = new BigDecimal("-1").multiply(b_BD);
	BigDecimal val_bCuadrado = b_BD.pow(2);
	BigDecimal val_2a = new BigDecimal("2").multiply(a_BD); 
	BigDecimal val_raiz = (val_bCuadrado.subtract(val_4ac)).sqrt(new MathContext(10));
	
	
	BigDecimal x = (val_menos_b.add(val_raiz)).divide(val_2a);
	BigDecimal menosX = (val_menos_b.subtract(val_raiz)).divide(val_2a);
	
	salida+= x + " y " + menosX;
	out.println(salida);
	
}catch(ArithmeticException ae){
	out.print("¡Ouch! raíz cuadrada de un número negativo, prueba con otros valores");
}catch(Exception e){
	out.print("Datos introducidos erróneos, no se puede resolver la ecuación");
	e.printStackTrace();
}
%>

</body>
</html>