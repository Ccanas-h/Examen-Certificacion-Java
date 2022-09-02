<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="com.edutecno.jpacrud.modelo.Estudiante"%>
<%@page import="com.edutecno.jpacrud.VO.EstudianteVO"%>
<%@page import="com.edutecno.jpacrud.controlador.ProductoController"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="charset=ISO-8859-1">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.3.0/css/bootstrap.min.css" />
<title>Portal de Estudiantes</title>

</head>
<body>


	<!-- Inicio Header -->
	<nav class="navbar navbar-dark bg-info navbar-expand-sm">
		<a class="navbar-brand" href="/home">Portal Estudiantes.net</a>
	</nav>

	<!-- Fin Header -->
	<div class="container justify-content-center">
		<div class="row col-sm-12 text-center justify-content-center">
			<p text-center justify-content-center>
				El metodo que toma las fechas de nacimiento de los estudiantes <br>
				hasta la fecha actual esta en <b>JpaCrudApplication.java</b><br>
				Se muestran los datos por consola.
			</p>
		</div>



		<!-- Inicio Contenido -->


		<div class="row p-3 col-sm-12">

			<!-- Inicio Mensajes -->
			<c:if test="${mensaje != null ? true : false}">
				<div class="alert alert-secondary alert-dismissible fade show"
					role="alert">${mensaje}
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>
			<aside></aside>

		</div>
	</div>

	<div class="container">
		<form action="buscar" method="post" class="form-inline">
			<div class="form-group row  col-sm-12 float-right mb-2">


				<label class="mr-3"><b>Region</b></label>
				<div>
					<select id="regionString" name="regionString">
						<option value="1">Arica-Parinacota</option>
						<option value="2">Tarapaca</option>
						<option value="3">Antofagasta</option>
						<option value="4">Atacama</option>
						<option value="5">Coquimbo</option>

						<option value="6">Valparaiso</option>
						<option value="7">Metropolitana tiene datos</option>
						<option value="8">O Higgins</option>
						<option value="9">Maule</option>
						<option value="10">Nuble</option>

						<option value="11">Bio Bio</option>
						<option value="12">Araucania</option>
						<option value="13">Los Rios</option>
						<option value="14">Los Lagos</option>
						<option value="15">Aysen</option>
						<option value="16">Magallanes y Antartica Chilena</option>
					</select>
				</div>
			</div>


			<div class="form-group row  col-sm-12">
				<label class="mr-3"><b> Curso</b></label> <select id="nombreCurso"
					name="nombreCurso">


					<option value="Desarrollo de aplifaciones Frontend Trainee">Desarrollo
						de aplifaciones Frontend Trainee</option>
					<option value="Desarrollo de aplifaciones FullStack Java Trainee">Desarrollo
						de aplifaciones FullStack Java Trainee</option>
					<option
						value="Desarrollo de aplifaciones FullStack JavaScript Trainee">Desarrollo
						de aplifaciones FullStack JavaScript Trainee</option>
					<option value="Desarrollo de aplifaciones FullStack Python Trainee">Desarrollo
						de aplifaciones FullStack Python Trainee</option>
					<option value="Emprendimiento digital con Ruby On Rails">Emprendimiento
						digital con Ruby On Rails</option>
				</select>


			</div>


			<div class="container mb-3 mt-3 ">
				<div class="row col-sm-12 ">
					<div class="col text-center">
						<button type="submit"
							class="btn btn-info justify-content-center float-left pl-5 pr-5 ">Buscar</button>
					</div>
				</div>
			</div>

		</form>
	</div>




	<div class="container">
		<div class="form-group row  col-sm-6 float-left">


			<!-- Inicio Tabla -->
			<table border="1" class="table table-hover ">
				<thead class="thead-info thead-dark">
					<tr>
						<th scope="col">RUT Estudiantes</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellido paterno</th>
						<th scope="col">Apellido materno</th>
						<th scope="col">Codigo curso</th>
						<th scope="col">Descripcion curso</th>
						<th scope="col">Region</th>
					</tr>
				</thead>
				<tbody table-striped>
					<c:forEach var="estudiantes" items="${VO.estudiantes}">
						<tr>
							<td><c:out value="${estudiantes.rut}" /></td>
							<td><c:out value="${estudiantes.nombre}" /></td>
							<td><c:out value="${estudiantes.apellido_pat}" /></td>
							<td><c:out value="${estudiantes.apellido_mat}" /></td>
							<td><c:out value="${estudiantes.codigo_curso}" /></td>
							<td><c:out
									value="${estudiantes.codigo_curso.codigo_plan_formativo.descripcion}" /></td>
							<td><c:out
									value="${estudiantes.codigo_curso.codigo_comuna.codigo_region.nombre}" /></td>



						</tr>
					</c:forEach>


				</tbody>
			</table>

			<!-- Fin tabla -->
		</div>
	</div>
	<!-- Fin Contenido -->
</body>
</html>
