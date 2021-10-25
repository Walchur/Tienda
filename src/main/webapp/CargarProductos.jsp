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
<title>Productos</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h1></h1>
				<h3>Tienda Genérica</h3>
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active"	href="usuario.jsp">Usuarios</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="cliente.jsp">Clientes</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="proveedor.jsp">Proveedores</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="CargarProductos.jsp">Productos</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="">Ventas</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Reportes.jsp">Reportes</a>
					</li>

				</ul>	
					<div class="container p-5">
						<div class="row flex-column justify-content-center">
							<h4 class="bg-danger col-sm-8 m-auto text-center p-2">Registrar Productos</h4>

							<form class="col-sm-8 m-auto p-2" action="./subirArchivo" method="POST" enctype="multipart/form-data">
										
								<div class="form-group">
									<input name="file" type="file"/>
								</div>
								
								<div class="form-group text-center">
									<button type="submit" class="btn btn-success">Registrar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>