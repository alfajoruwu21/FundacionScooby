<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio de Sesion</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h2>Iniciar Sesion</h2>
		<p class="text-danger">${error_login}</p>
		<form action="/login" method="post">
			<div>
				<label>Email</label>
				<input type="text" class="form-control" name="email" />
			</div>
			<div>
				<label>Password</label>
				<input type="password" class="form-control" name="password" />
			</div>
			<input type="submit" class="btn btn-info mt-3" value="Login" />
		</form>
	</div>
</body>
</html>