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
<head>
<meta charset="ISO-8859-1">
<title>Agregar Proveedor</title>
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
				<h4>Agregar Proveedor</h4>

				<form method="GET" onsubmit="agregarProveedor()" role="form">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<label for="exampleInputEmail1">NIT:</label> <input
												type="text" name="nit" id="nit" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Dirección:</label> <input
												type="text" name="direccion" id="direccion" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Ciudad:</label> <input
												type="text" name="ciudad" id="ciudad" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Nombre:</label> <input
												type="text" name="nombre" id="nombre" class="form-control">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Teléfono:</label> <input
												type="text" name="telefono" id="telefono" class="form-control">
										</div>
										<div class="form-group">
											<br>
											<input type="submit" class="btn btn-primary"> 
											<a href ='proveedor.jsp' class='btn btn-primary' role= 'button'>Regresar</a>
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