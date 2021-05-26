<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Producto (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Eliminar Producto Existente</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href = "index.jsp">Volver Al Inicio</a></li>
		<li><a href = "agregar.jsp">Agregar Nuevo Producto</a> </li>
		<li><a href = "Controlador?btn=5">Ver Lista De Productos Existentes</a></li>
	</ul>
	<hr>
<p> ID a eliminar : ${param.idproducto} </p> 
<p> ¿Esta seguro de querer eliminarlo?</p>
<a href= "index.jsp">NO</a>
<hr>
<a href= "Controlador?txtidproducto=${param.idproducto}&btn=6">SI</a>
<hr>
<h4>${mensaje}</h4>
</body>
</html>