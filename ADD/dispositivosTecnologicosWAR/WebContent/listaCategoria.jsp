<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Categoria (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Lista De Categorias</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href = "index.jsp">Volver Al Inicio</a></li>
		<li><a href = "agregarCategoria.jsp">Agregar Nueva Categoria</a></li>
	</ul>
	<hr>
<table>
	<c:forEach items="${lista}" var="c">
	<tr>
	 <td>${c.idcategoria}</td>
	 <td>${c.categoria}</td>
	  <td>${c.detalle}</td>
	  <td><a href ="modificarCategoria.jsp?idcategoria=${c.idcategoria}&categoria=${c.categoria}&detalle=${c.detalle}">Modificar</a></td>
	 <td><a href ="eliminarCategoria.jsp?idcategoria=${c.idcategoria}">Eliminar</a></td>
	</c:forEach>
</table>
</body>
</html>