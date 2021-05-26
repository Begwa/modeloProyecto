<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Usuario (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Eliminar Usuario Existente</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href = "index.jsp">Volver Al Inicio</a></li>
		<li><a href = "agregar.jsp">Agregar Nuevo Usuario</a> </li>
		<li><a href = "Controlador?btn=9">Ver Lista De Usuarios Existentes</a></li>
	</ul>
	<hr>
<p> ID a eliminar : ${param.idusuario} </p> 
<p> ¿Esta seguro de querer eliminarlo?</p>
<a href= "index.jsp">NO</a>
<hr>
<a href= "Controlador?txtidusuario=${param.idusuario}&btn=11">SI</a>
<hr>
<h4>${mensaje}</h4>
</body>
</html>