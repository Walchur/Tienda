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
<title>Agregar Usuario</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function agregarUsuario() {
		var cedula = document.getElementById("cedula").value;
		var correo = document.getElementById("correo").value;
		var nombre = document.getElementById("nombre").value;
		var pass = document.getElementById("pass").value;
		var usuario = document.getElementById("usuario").value;

		var agregar = $.ajax({
			type : "GET",
			url : "http://localhost:8080/registrarUsuario?cedulaUsuario="
					+ cedula + "&emailUsuario=" + correo + "&nombreUsuario="
					+ nombre + "&password=" + pass + "&usuario=" + usuario,
			success : function(data) {
				window.location = "http://localhost:8080/usuario.jsp";
			}
		})

	}
</script>
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
					<li class="nav-item"><a class="nav-link" href="proveedor.jsp">Proveedores</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="CargarProductos.jsp">Productos</a></li>
					<li class="nav-item"><a class="nav-link" href="">Ventas</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Reportes.jsp">Reportes</a>
					</li>

				</ul>
				<h4>Agregar usuario</h4>

				<form method="GET" onsubmit="agregarUsuario()" role="form">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<label for="exampleInputEmail1">Cedula:</label> 
											<input type="text" name="cedula" id="cedula" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Correo:</label> 
											<input type="text" name="correo" id="correo" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Nombre:</label> 
											<input type="text" name="nombre" id="nombre" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Contraseña:</label> 
											<input type="text" name="pass" id="pass" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Usuario:</label> 
											<input type="text" name="usuario" id="usuario" class="form-control">
										</div>
										<div class="form-group">
											<br>
											<input type="submit" class="btn btn-primary"> 
											<a href ='usuario.jsp' class='btn btn-primary' role= 'button'>Regresar</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>