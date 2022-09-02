<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="com.edutecno.jpacrud.modelo.Estudiante"%>
<%@page import="com.edutecno.jpacrud.VO.EstudianteVO"%>
<%@page import="com.edutecno.jpacrud.service.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="charset=ISO-8859-1">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.3.0/css/bootstrap.min.css" />
<title>Producto Busqueda</title>
</head>
<body>

	<div class="p-3">
		<table border="1" class="table table-hover">
			<h3>Resultados</h3>
					<a href="home" class="btn btn-info float-right">Volver</a>
			<thead class="thead-info">
						<tr>
							<th scope="col">Rut</th>
							<th scope="col">Nombre</th>
							<th scope="col">Apellido paterno</th>
							<th scope="col">Apellido materno</th>
							<th scope="col">Codigo curso</th>
							<th scope="col">Descripcion curso</th>
							<th scope="col">Region</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="estudiantes" items="${VO2.estudiantes}">
							<tr>
								<td><c:out value="${estudiantes.rut}" /></td>
								<td><c:out value="${estudiantes.nombre}" /></td>
								<td><c:out value="${estudiantes.apellido_pat}" /></td>
								<td><c:out value="${estudiantes.apellido_mat}" /></td>
								<td><c:out value="${estudiantes.codigo_curso}" /></td>
								<td><c:out value="${estudiantes.codigo_curso.codigo_plan_formativo.descripcion}" /></td>
								<td><c:out value="${estudiantes.codigo_curso.codigo_comuna.codigo_region.nombre}"/></td>



							</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>






</body>
</html>