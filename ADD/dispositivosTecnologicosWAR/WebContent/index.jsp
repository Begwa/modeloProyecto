<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrar</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<hr> 
<h3>Opciones A Realizar Como Administrador</h3>
<hr>
	<ul>
        <li><a href="Controlador?btn=5">Administrar Lista De Productos Existentes</a> </li>
		<hr>
        <li><a href="agregarProducto.jsp">Agregar Nuevo Producto</a></li>
		<hr>
		<li><a href="Controlador?btn=1">Administrar Lista De Categorias Existentes</a></li>
		<hr>
		<li><a href="agregarCategoria.jsp">Agregar Nueva Categoria</a></li>
		<hr>
		<li><a href="Controlador?btn=9">Administrar Lista De Usuarios Existentes</a></li>
		<hr>
		<li><a href="agregarUsuario.jsp">Agregar Nuevo Usuario</a></li>
	</ul>
<hr>
</body>
</html>