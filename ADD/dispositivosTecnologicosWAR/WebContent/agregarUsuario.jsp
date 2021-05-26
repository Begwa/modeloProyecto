<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar Usuario (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Agregar Nuevo Usuario</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href = "index.jsp">Volver Al Inicio</a></li>
		<li><a href = "Controlador?btn=9">Ver Lista De Usuarios</a></li>
	</ul>
	<hr>
<form action ="Controlador" method="post">	
	<p><label for="txtidusuario">ID Del Nuevo Usuario</label>
	<input type="text" name="txtidusuario" required = "required">
	</p>
	<hr>
	<p><label for="txtnombreu">Nombre Del Usuario</label>
	<input type="text" name="txtnombreu" required = "required">
	</p>
	<hr>
	<p><label for="txtapellido">Apellido Del Usuario</label>
	<input type="text" name="txtapellido" required = "required">
	</p>
	<hr>
	<p><label for="txtcorreo">Correo Electronico Del Usuario</label>
	<input type="text" name="txtcorreo" required = "required">
	</p>
	<hr>
	<p><label for="txtpassword">Password Del Usuario</label>
	<input type="text" name="txtpassword" required = "required">
	</p>
	<hr>
	<p><label for="txttipousuario">Tipo de Usuario</label>
	<input type="text" name="txttipousuario" required = "required">
	</p>
	<hr>
	<button type="submit" value="10" name="btn">Agregar Usuario Al Sistema</button>
</form>	
${mensaje} 			
</body>
</html>