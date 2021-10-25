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
<title>Reportes</title>
<style>
.contenedor {
	margin: auto;
}
div.centraTabla {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h1></h1>
				<h3>Tienda Genérica</h3>
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active"
						href="usuario.jsp">Usuarios</a></li>
					<li class="nav-item"><a class="nav-link" href="cliente.jsp">Clientes</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="proveedores.jsp">Proveedores</a></li>
					<li class="nav-item"><a class="nav-link" href="CargarProductos.jsp">Productos</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="">Ventas</a></li>
					<li class="nav-item"><a class="nav-link" href="Reportes.jsp">Reportes</a>
					</li>
				</ul>
				<div class='centraTabla'>
				<h4>Reportes</h4>
				<div class="contenedor">
					<a href="ListadoUsuarios.jsp" class="btn btn-primary" role="button">Listado
						de Usuarios</a> <br> <br> <a href="ListadoClientes.jsp"
						class="btn btn-primary" role="button">Listado de Clientes</a>
				</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>