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
<title>Editar Cliente</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var cedula = "<%=request.getParameter("cedula")%>"
	var cliente = $.ajax({
		type: "GET",
		url: "http://localhost:8080/consultarCliente?documento="+cedula,
		success:function(data){
			$.each(data, function(i, item){
				var cedula = document.getElementById("cedula").value = item.cedulaCliente;
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
					<li class="nav-item"><a class="nav-link" href="CargarProductos.jsp">Productos</a></li>
					<li class="nav-item"><a class="nav-link" href="">Ventas</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Reportes.jsp">Reportes</a>
					</li>

				</ul>
				<h4>Editar Cliente</h4>	
				<form method = "GET" onsubmit = "editarCliente()"role="form">
				<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<label for="exampleInputEmail1">Cedula:</label> <input
												type="text" name="cedula" id="cedula" class="form-control" disabled>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Direccion:</label> <input
												type="text" name = "direccion" id = "direccion" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Correo:</label> <input
												type="text" name="correo" id="correo" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Nombre:</label> <input
												type="text" name="nombre" id="nombre" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Telefono:</label> <input
												type="text" name = "telefono" id = "telefono" class="form-control">
										</div>
										<div class="form-group">
											<br>
											<input type="submit" class="btn btn-primary"> 
											<a href ='cliente.jsp' class='btn btn-primary' role= 'button'>Regresar</a>
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