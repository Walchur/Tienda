<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function agregarProveedor(){
		var nit = document.getElementById("nit").value;
		var direccion = document.getElementById("direccion").value;
		var ciudad = document.getElementById("ciudad").value;
		var nombre = document.getElementById("nombre").value;
		var telefono = document.getElementById("telefono").value;
		
		var agregar = $.ajax({
			type: "GET",
			url: "http://localhost:8080/registrarProveedor?nitProveedor="+nit+"&direccionProveedor="+direccion+"&ciudadProveedor="+ciudad+"&nombreProveedor="+nombre+"&telefonoProveedor="+telefono,
			success:function(data){
				window.location.href="http://localhost:8080/cliente.jsp";
			}
		})

	}

</script>
</head>
<body>
<form method = "GET" onsubmit = "agregarProveedor()">
		<div>
			<label>Nit:</label>
			<input type = "text" name = "nit" id = "nit">
		</div>
		<div>
			<label>Direccion:</label>
			<input type = "text" name = "direccion" id = "direccion">
		</div>
		<div>
			<label>Ciudad:</label>
			<input type = "text" name = "ciudad" id = "ciudad">
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