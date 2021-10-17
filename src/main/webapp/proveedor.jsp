<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var proveedores = $.ajax({
		type : "GET",
		url : "http://localhost:8080/listarProveedor",
		success : function(data) {
			$.each(data, function(i, item) {
				lista = document.getElementById("myTable");
				var tr = document.createElement("tr");
				var columna1 = document.createElement("td");
				columna1.innerHTML = item.nitProveedor;
				var columna2 = document.createElement("td");
				columna2.innerHTML = item.direccionProveedor;
				var columna3 = document.createElement("td");
				columna3.innerHTML = item.ciudadProveedor;
				var columna4 = document.createElement("td");
				columna4.innerHTML = item.nombreProveedor;
				var columna5 = document.createElement("td");
				columna5.innerHTML = item.telefonoProveedor;
				var columna6 = document.createElement("td");
				columna6.innerHTML = "<a href ='' onclick = eliminarProveedor('"+item.nitProveedor+"')>Eliminar</a>";
				var columna7 = document.createElement("td");
				columna7.innerHTML = "<a href = 'EditarProveedor.jsp?cedula="+item.nitProveedor+"'>Editar</a>";

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
	function eliminarProveedor(cedula){
		alert(cedula);
		var eliminar = $.ajax({
			type: "GET",
			url: "http://localhost:8080/eliminarProveedor?cedula="+cedula,
			success: function(data){
				
			}
		})
	}
</script>
</head>
<body>
	<h1>Proveedores</h1>
	<a href="AgregarProveedor.jsp">Agregar Proveedor</a>
	<table id="tabla">
		<thead>
			<tr>
				<th>Nit</th>
				<th>Direccion</th>
				<th>Ciudad</th>
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