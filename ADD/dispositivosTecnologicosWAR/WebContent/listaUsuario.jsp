<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Usuario (Mantencion)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<body>
<h3>Lista De Usuarios</h3>
<hr>
<h3>Opciones A Realizar Como Administrador</h3>
	<ul>
		<li><a href = "index.jsp">Volver Al Inicio</a></li>
		<li><a href = "agregarUsuario.jsp">Agregar Nuevo Usuario</a></li>
	</ul>
	<hr>
<table>
	<c:forEach items="${lista}" var="u">
	<tr>
	 <td>${u.idusuario}</td>
	 <td>${u.nombreu}</td>
	 <td>${u.apellido}</td>
	 <td>${u.correo} </td>
	 <td>${u.password} </td>
	 <td>${u.tipousuario}</td>
	<td><a href ="modificarUsuario.jsp?idusuario=${u.idusuario}&nombreu=${u.nombreu}&apellido=${u.apellido}&correo=${u.correo}&password=${u.password}&tipousuario=${u.tipousuario}">Modificar</a></td>
	 <td><a href ="eliminarUsuario.jsp?idusuario=${u.idusuario}">Eliminar</a></td>
	</c:forEach>
</table>
</body>
</html>