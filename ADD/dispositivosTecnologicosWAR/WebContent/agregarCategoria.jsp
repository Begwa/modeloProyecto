<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar Categoria (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Agregar Nueva Categoria</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href = "index.jsp">Volver Al Inicio</a></li>
		<li><a href = "Controlador?btn=1">Ver Lista De Categorias</a></li>
	</ul>
	<hr>
<form action ="Controlador" method="post">
	<p><label for="txtidcategoria">ID De La Nueva Categoria</label>
	<input type="text" name="txtidcategoria" required = "required" >
	</p>
	<hr>
	<p><label for="txtcategoria">Nombre De La Categoria</label>
	<input type="text" name="txtcategoria" required = "required">
	</p>
	<hr>
	<p><label for="txtdetalle">Detalle De La Categoria</label>
	<input type="text" name="txtdetalle" required = "required">
	</p>
	<hr>
	<button type="submit" value="2" name="btn">Agregar Categoria</button>
</form>	
${mensaje} 			
</body>
</html>