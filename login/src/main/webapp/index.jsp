<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.iesvdm.modelo.Usuario" %>
<!DOCTYPE html>
<html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Página principal</title>
 </head>
 <body>
   <h1>Página principal</h1>
   <%
// Si NO existe el objeto usuario en sesión es que no se ha hecho login 
// y te mando el enlace de login
     if (session.getAttribute("usuario") == null) { 
   %>
       <a href="formulario-login.jsp">Entrar</a>
   <%
     } else {
    	 // Si ya tenemos un objeto de Usuario instanciado entonces te mando a tu perfil
    	 // y te paso el enlace de logOut
   	  Usuario usuario = (Usuario)session.getAttribute("usuario");
   	
   %>
   Logueado como <a href="perfil.jsp"><%= usuario.getUser() %></a>
       (<a href="logout.jsp">Salir</a>)
   <%
   }
   %>
  
   <p>
     Página principal con información pública que puede ver cualquier usuario.
   </p>
 </body>
</html>