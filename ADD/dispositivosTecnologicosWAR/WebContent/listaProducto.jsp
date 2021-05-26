<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Producto (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Lista De Productos</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href = "index.jsp">Volver Al Inicio</a></li>
		<li><a href = "agregarProducto.jsp">Agregar Nuevo Producto</a></li>
	</ul>
	<hr>
<table>
	<c:forEach items="${lista}" var="p">
	<tr>
	 <td>${p.idproducto}</td>
	 <td>${p.nombre}</td>
	 <td>${p.descripcion}</td>
	 <td>${p.precio} </td>
	 <td>${p.stock} </td>
	 <td>${p.stockminimo}</td>
	 <td><a href ="modificarProducto.jsp?idproducto=${p.idproducto}&nombre=${p.nombre}&descripcion=${p.descripcion}&precio=${p.precio}&stock=${p.stock}&stockminimo=${p.stockminimo}">Modificar</a></td>
	 <td><a href ="eliminarProducto.jsp?idproducto=${p.idproducto}">Eliminar</a></td>
	</c:forEach>
</table>
</body>
</html>