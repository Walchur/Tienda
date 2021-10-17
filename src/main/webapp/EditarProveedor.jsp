<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var nit = "<%=request.getParameter("cedula")%>"
	var cliente = $.ajax({
		type: "GET",
		url: "http://localhost:8080/consultarProveedor?documento="+nit,
		success:function(data){
			$.each(data, function(i, item){
				var nit = document.getElementById("nit").value = item.nitProveedor;
				var direccion = document.getElementById("direccion").value = item.direccionProveedor;
				var ciudad = document.getElementById("ciudad").value = item.ciudadProveedor;
				var nombre = document.getElementById("nombre").value = item.nombreProveedor;
				var telefono = document.getElementById("telefono").value = item.telefonoProveedor;
			})
		}
	});
	function editarCliente(){
		var nit = document.getElementById("nit").value;
		var direccion = document.getElementById("direccion").value;
		var ciudad = document.getElementById("ciudad").value;
		var nombre = document.getElementById("nombre").value;
		var telefono = document.getElementById("telefono").value;
		
		var editar = $.ajax({
			type: "GET",
			url: "http://localhost:8080/editarProveedor?nitProveedor="+nit+"&direccionProveedor="+direccion+"&ciudadProveedor="+ciudad+"&nombreProveedor="+nombre+"&telefonoProveedor="+telefono,
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
			<label>Nit:</label>
			<input type = "text" name = "nit" id = "nit" disabled>
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