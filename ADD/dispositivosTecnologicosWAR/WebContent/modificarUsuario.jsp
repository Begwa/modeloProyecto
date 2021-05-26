<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Usuario (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Modificar Usuario Existente</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href="index.jsp">Volver Al Inicio</a> </li>
		<li><a href="Controlador?btn=10">Agregar Nuevo Usuario</a> </li>
		<li><a href= "Controlador?btn=9">Ver Lista De Usuarios Existentes</a></li>	
	</ul>
	<hr>
	<form action ="Controlador" method="post">
	<p><label for="txtidusuario">ID Del Usuario Que Desea Modificar</label>
	<input value="${param.idusuario}" type="text" name="txtidusuario" readonly ></p>
	<hr>
	<p><label for="txtnombreu">Nombre Del Usuario</label>
	<input value="${param.nombreu}" type="text" name="txtnombreu" required>
	</p>
	<hr>
	<p><label for="txtapellido">Apellido Paterno Del Usuario</label>
	<input  value="${param.apellido}" type="text" name="txtapellido" required>
	</p>
	<hr>
	<p><label for="txtcorreo">Correo Electronico Del Usuario</label>
	<input  value="${param.correo}" type="text" name="txtcorreo" required>
	</p>
	<hr>
	<p><label for="txtpassword">Password Del Usuario</label>
	<input  value="${param.password}" type="text" name="txtpassword" required>
	</p>
	<hr>
	<p><label for="txttipousuario">Tipo de Usuario</label>
	<input  value="${param.tipousuario}" type="text" name="txttipousuario" required>
	</p>
	<hr>
	<button type="submit" value="12" name="btn">Modificar Usuario</button>
</form>	
</body>
</html>