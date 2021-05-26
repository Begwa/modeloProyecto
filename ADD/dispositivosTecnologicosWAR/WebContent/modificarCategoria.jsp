<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Categoria (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Modificar Categoria Existente</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href="index.jsp">volver Al Incio</a> </li>
		<li><a href="Controlador?btn=2">Agregar Nueva Categoria</a> </li>
		<li><a href= "Controlador?btn=1">Ver Lista De Categorias Existentes</a></li>	
	</ul>
	<hr>
	<form action ="Controlador" method="post">
	<p><label for="txtidcategoria">ID De La Categoria Que Desea Modificar</label>
	<input value="${param.idcategoria}" type="text" name="txtidcategoria" readonly ></p>
	<p><label for="txtcategoria">Nombre De La Categoria </label>
	<input value="${param.categoria}" type="text" name="txtcategoria" required>
	</p>
	<p><label for="txtdetalle">Detalle De La Categoria</label>
	<input  value="${param.detalle}" type="text" name="txtdetalle" required>
	</p>
	<hr>
	<button type="submit" value="3" name="btn">Modificar Categoria</button>
</form>	
</body>
</html>