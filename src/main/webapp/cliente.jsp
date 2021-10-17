<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <link href="css/tiendastyle.css" rel='stylesheet'>

    <title>Tienda</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var clientes = $.ajax({
		type : "GET",
		url : "http://localhost:8080/listarCliente",
		success : function(data) {
			$.each(data, function(i, item) {
				lista = document.getElementById("myTable");
				var tr = document.createElement("tr");
				var columna1 = document.createElement("td");
				columna1.innerHTML = item.cedulaCliente;
				var columna2 = document.createElement("td");
				columna2.innerHTML = item.direccionCliente;
				var columna3 = document.createElement("td");
				columna3.innerHTML = item.emailCliente;
				var columna4 = document.createElement("td");
				columna4.innerHTML = item.nombreCliente;
				var columna5 = document.createElement("td");
				columna5.innerHTML = item.telefonoCliente;
				var columna6 = document.createElement("td");
				columna6.innerHTML = "<a href ='' onclick = eliminarCliente('"+item.cedulaCliente+"')>Eliminar</a>";
				var columna7 = document.createElement("td");
				columna7.innerHTML = "<a href = 'EditarCliente.jsp?cedula="+item.cedulaCliente+"'>Editar</a>";

				lista.appendChild(tr);
				tr.appendChild(columna1);
				tr.appendChild(columna2);
				tr.appendChild(columna3);
				tr.appendChild(columna4);
				tr.appendChild(columna5);
				tr.appendChild(columna6);
				tr.appendChild(columna7);
			});
		}
	})
	function eliminarCliente(cedula){
		alert(cedula);
		var eliminar = $.ajax({
			type: "GET",
			url: "http://localhost:8080/eliminarCliente?cedula="+cedula,
			success: function(data){
				
			}
		})
	}
</script>
</head>
<body>
	<h1>Clientes</h1>
	<a href="AgregarCliente.jsp">Agregar Cliente</a>
	<table id="tabla">
		<thead>
			<tr>
				<th>Cedula</th>
				<th>Direccion</th>
				<th>Correo</th>
				<th>Nombre</th>	
				<th>Telefono</th>
				<th>Eliminar</th>
				<th>Editar</th>
			</tr>
		</thead>
		<tbody id="myTable">

		</tbody>
	</table>
</body>
</html>