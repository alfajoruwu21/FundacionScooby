<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container">
    	<h4>�ya te registraste?<a href="/login">Inicia sesi�n</a></h4>
		<div class="row">
			<div class="col-6">
				<h2>Registrate</h2>
				<form:form action="/register" method="post" modelAttribute="newUser">
					<div>
						<form:label path="name">Nombre</form:label>
						<form:input path="name" class="form-control"/>
						<form:errors path="name" class="text-danger"/>
					</div>
					<div>
						<form:label path="email">E-mail</form:label>
						<form:input path="email" class="form-control"/>
						<form:errors path="email" class="text-danger"/>
					</div>
					<div>
						<form:label path="birth">Fecha de Nacimiento</form:label>
						<form:input path="birth" class="form-control" type="date"/>
						<form:errors path="birth" class="text-danger"/>
					</div>
					<div>
						<form:label path="city">Ciudad</form:label>
						<form:input path="city" class="form-control"/>
						<form:errors path="city" class="text-danger"/>
					</div>
					<div>
						<form:label path="region">Region</form:label>
						<form:select path="region" class="form-control">
							<c:forEach items="${regiones}" var="region">
								<option value="${region}"> ${region}</option>
							</c:forEach>
						</form:select>
					</div>
					<div>
						<form:label path="password">Contrase�a</form:label>
						<form:password path="password" class="form-control"/>
						<form:errors path="password" class="text-danger"/>
					</div>
					<div>
						<form:label path="confirm">Confirmar contrase�a</form:label>
						<form:password path="confirm" class="form-control"/>
						<form:errors path="confirm" class="text-danger"/>
					</div>
					<input type="submit" class="btn btn-success mt-3" value="Register">
				</form:form>
			</div>
		</div>	
    </div>
</body>
</html>