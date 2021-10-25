<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">

<link href="css/tiendastyle.css" rel='stylesheet'>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Usuarios</title>
<style type="text/css">
table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	padding: 10px;
	text-align: left;
}

div.centraTabla {
	text-align: center;
}

div.centraTabla table {
	margin: 0 auto;
	text-align: left;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var usuarios = $.ajax({
		type : "GET",
		url : "http://localhost:8080/listarUsuario",
		success : function(data) {
			$.each(data, function(i, item) {
				lista = document.getElementById("myTable");
				var tr = document.createElement("tr");
				var columna1 = document.createElement("td");
				columna1.innerHTML = item.cedulaUsuario;
				var columna2 = document.createElement("td");
				columna2.innerHTML = item.emailUsuario;
				var columna3 = document.createElement("td");
				columna3.innerHTML = item.nombreUsuario;
				var columna4 = document.createElement("td");
				columna4.innerHTML = item.password;
				var columna5 = document.createElement("td");
				columna5.innerHTML = item.usuario;

				lista.appendChild(tr);
				tr.appendChild(columna1);
				tr.appendChild(columna2);
				tr.appendChild(columna3);
				tr.appendChild(columna4);
				tr.appendChild(columna5);
			});
		}
	})
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h1></h1>
				<h3>Tienda Genérica</h3>
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active"	href="usuario.jsp">Usuarios</a></li>
					<li class="nav-item"><a class="nav-link" href="cliente.jsp">Clientes</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="proveedor.jsp">Proveedores</a></li>
					<li class="nav-item"><a class="nav-link" href="CargarProductos.jsp">Productos</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="">Ventas</a></li>
					<li class="nav-item"><a class="nav-link" href="Reportes.jsp">Reportes</a>
					</li>
				</ul>
				<div class='centraTabla'>
					<h1>Listado de Usuarios</h1>
					<table id="tabla">
						<thead>
							<tr>
								<th>Cedula</th>
								<th>Correo</th>
								<th>Nombre</th>
								<th>Contraseña</th>
								<th>Usuario</th>
							</tr>
						</thead>
						<tbody id="myTable">

						</tbody>
						
					</table>
					<br>
					<a href="Reportes.jsp" class="btn btn-primary" role="button">Volver</a>
				</div>



			</div>
		</div>
	</div>

</body>
</html>
