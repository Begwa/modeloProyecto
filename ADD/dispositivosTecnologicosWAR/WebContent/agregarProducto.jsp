<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar Producto (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Agregar Nuevo Producto</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href = "index.jsp">Volver Al Inicio</a></li>
		<li><a href = "Controlador?btn=5">Ver Lista De Productos</a></li>
	</ul>
	<hr>
<form action ="Controlador" method="post">

	<p><label for="txtidproducto">ID Del Nuevo Producto</label>
	<input type="number" name="txtidproducto" required = "required" >
	</p>
	<hr>
	<p><label for="txtnombre">Nombre Del Producto</label>
	<input type="text" name="txtnombre" required = "required">
	</p>
	<hr>
	<p><label for="txtdescripcion">Descripcion Del Producto</label>
	<input type="text" name="txtdescripcion" required = "required">
	</p>
	<hr>
	<p><label for="txtprecio">Precio Del Producto</label>
	<input type="number" name="txtprecio" required = "required">
	</p>
	<hr>
	<p><label for="txtstock">Stock Del Producto</label>
	<input type="number" name="txtstock" required = "required">
	</p>
	<hr>
	<p><label for="txtstockminimo">Stock Minimo Del Producto</label>
	<input type="number" name="txtstockminimo" required = "required">
	</p>
	<hr>
	<p><label for="txtidcategoria">Ingrese El Id De La Categoria (Producto)</label>
	<input type="text" name="txtidcategoria" required = "required">
	</p>
	<hr>
	<button type="submit" value="7" name="btn">Agregar Producto</button>
</form>	
${mensaje} 			
</body>
</html>