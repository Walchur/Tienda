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
<title>Bienvenido</title>

<style type="text/css">
div {
	margin: 0 auto;
}
h3 {
	text-align: center;
}
</style>

</head>
<body>
<h3>Bienvenidos a la Tienda Generica</h3>
	<form role="form" action="LoginServlet" method ="get">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
			
								<label for="exampleInputEmail1">Usuario:</label> <input
									type="text" name="usuario" class="form-control">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Contraseña:</label> <input
									type="text" name="password" class="form-control">
							</div>
							<div class="form-group">
								<br>
								<input type="submit" value="Enviar" class='btn btn-primary'>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>