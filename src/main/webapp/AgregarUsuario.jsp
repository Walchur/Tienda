<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function agregarUsuario(){
		var cedula = document.getElementById("cedula").value;
		var correo = document.getElementById("correo").value;
		var nombre = document.getElementById("nombre").value;
		var pass = document.getElementById("pass").value;
		var usuario = document.getElementById("usuario").value;
		
		var agregar = $.ajax({
			type: "GET",
			url: "http://localhost:8080/registrarUsuario?cedulaUsuario="+cedula+"&emailUsuario="+correo+"&nombreUsuario="+nombre+"&password="+pass+"&usuario="+usuario,
			success:function(data){
				window.location.href="http://localhost:8080/usuario.jsp";
			}
		})

	}

</script>
</head>
<body>
	<form method = "GET" onsubmit = "agregarUsuario()">
		<div>
			<label>Cedula:</label>
			<input type = "text" name = "cedula" id = "cedula">
		</div>
		<div>
			<label>Correo:</label>
			<input type = "text" name = "correo" id = "correo">
		</div>
		<div>
			<label>Nombre:</label>
			<input type = "text" name = "nombre" id = "nombre">
		</div>
		<div>
			<label>Contraseña:</label>
			<input type = "text" name = "pass" id = "pass">
		</div>
		<div>
			<label>Usuario:</label>
			<input type = "text" name = "usuario" id = "usuario">
		</div>
		<div>
			<input type = "submit">
		</div>
	</form>
</body>
</html>