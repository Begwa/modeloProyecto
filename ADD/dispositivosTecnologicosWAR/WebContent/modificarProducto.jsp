<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Producto (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Modificar Producto Existente</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href="index.jsp">Volver Al Inicio</a> </li>
		<li><a href="Controlador?btn=7">Agregar Nuevo Producto</a> </li>
		<li><a href= "Controlador?btn=5">Ver Lista De Productos Existentes</a></li>	
	</ul>
	<hr>
	<form action ="Controlador" method="post">
	<p><label for="txtidproducto">ID Del Producto Que Desea Modificar</label>
	<input value="${param.idproducto}" type="number" name="txtidproducto" readonly ></p>
	<hr>
	<p><label for="txtnombre">Nombre Del Producto</label>
	<input value="${param.nombre}" type="text" name="txtnombre" required>
	</p>
	<hr>
	<p><label for="txtdescripcion">Descripcion Del Producto</label>
	<input  value="${param.descripcion}" type="text" name="txtdescripcion" required>
	</p>
	<hr>
	<p><label for="txtprecio">Precio Del Producto</label>
	<input  value="${param.precio}" type="number" name="txtprecio" required>
	</p>
	<hr>
	<p><label for="txtstock">Stock Del Producto</label>
	<input  value="${param.stock}" type="number" name="txtstock" required>
	</p>
	<hr>
	<p><label for="txtstockminimo">Stock Minimo Del Producto</label>
	<input  value="${param.stockminimo}" type="number" name="txtstockminimo" required>
	</p>
	<hr>
	<p><label for="txtidcategoria">ID categoria</label>
	<input  value="${param.idcategoria}" type="text" name="txtidcategoria" required>
	</p>
	<hr>
	<button type="submit" value="8" name="btn">Modificar Producto</button>
</form>	
</body>
</html>