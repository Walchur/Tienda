<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var cedula = "<%=request.getParameter("cedula")%>"
	var cliente = $.ajax({
		type: "GET",
		url: "http://localhost:8080/consultarCliente?documento="+cedula,
		success:function(data){
			$.each(data, function(i, item){
				var cedula = document.gnietElementById("cedula").value = item.cedulaCliente;
				var direccion = document.getElementById("direccion").value = item.direccionCliente;
				var correo = document.getElementById("correo").value = item.emailCliente;
				var nombre = document.getElementById("nombre").value = item.nombreCliente;
				var telefono = document.getElementById("telefono").value = item.telefonoCliente;
			})
		}
	});
	function editarCliente(){
		var cedula = document.getElementById("cedula").value;
		var direccion = document.getElementById("direccion").value;
		var correo = document.getElementById("correo").value;
		var nombre = document.getElementById("nombre").value;
		var telefono = document.getElementById("telefono").value;
		
		var editar = $.ajax({
			type: "GET",
			url: "http://localhost:8080/editarCliente?cedulaCliente="+cedula+"&direccionCliente="+direccion+"&emailCliente="+correo+"&nombreCliente="+nombre+"&telefonoCliente="+telefono,
			success:function(data){
				window.location.href="http://localhost:8080/cliente.jsp";
			}
		})
	}
</script>
</head>
<body>
<form method = "GET" onsubmit = "editarCliente()">
		<div>
			<label>Cedula:</label>
			<input type = "text" name = "cedula" id = "cedula" disabled>
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