<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function agregarCliente(){
		var cedula = document.getElementById("cedula").value;
		var direccion = document.getElementById("direccion").value;
		var correo = document.getElementById("correo").value;
		var nombre = document.getElementById("nombre").value;
		var telefono = document.getElementById("telefono").value;
		
		var agregar = $.ajax({
			type: "GET",
			url: "http://localhost:8080/registrarCliente?cedulaCliente="+cedula+"&direccionCliente="+direccion+"&emailCliente="+correo+"&nombreCliente="+nombre+"&telefonoCliente="+telefono,
			success:function(data){
				window.location.href="http://localhost:8080/cliente.jsp";
			}
		})

	}

</script>
</head>
<body>
<form method = "GET" onsubmit = "agregarCliente()">
		<div>
			<label>Cedula:</label>
			<input type = "text" name = "cedula" id = "cedula">
		</div>
		<div>
			<label>Direccion:</label>
			<input type = "text" name = "direccion" id = "direccion">
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
			<label>Telefono:</label>
			<input type = "text" name = "telefono" id = "telefono">
		</div>
		<div>
			<input type = "submit">
		</div>
	</form>
</body>
</html>