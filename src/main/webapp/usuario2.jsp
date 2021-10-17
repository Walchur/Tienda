<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <link href="css/tiendastyle.css" rel='stylesheet'>

    <title>Tienda</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function agregarUsuario(){
		var cedula = document.getElementById("cedula").value;
		var correo = document.getElementById("correo").value;
		var nombre = document.getElementById("nombre").value;
		var pass = document.getElementById("pass").value;
		var usuario = document.getElementById("usuario").value;
		
		var agregar = $.ajax({
			type: "GET",
			url: "http://localhost:8080/registrarUsuario?cedulaUsuario="+cedula+"&emailUsuario="+correo+"&nombreUsuario="+nombre+"&password="+pass+"&usuario="+usuario,
			success:function(data){
				window.location.href="http://localhost:8080/usuario.jsp";
			}
		})

	}
	
	function consultarUsuario(){
		var cedula = document.getElementById("cedula").value;
		var usuario = $.ajax({
			type: "GET",
			url: "http://localhost:8080/consultarUsuario?documento="+cedula,
			success:function(data){
				$.each(data, function(i, item){
					var correo = document.getElementById("correo").value = item.emailUsuario;
					var nombre = document.getElementById("nombre").value = item.nombreUsuario;
					var pass = document.getElementById("pass").value = item.password;
					var usuario = document.getElementById("usuario").value = item.usuario;
				})
			}
		});
		
		
	}
	</script>
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <h1>

      </h1>
      <h3>
        Tienda Genérica
      </h3>
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link active" href="usuarios.html">Usuarios</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="clientes.html">Clientes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="proveedores.html">Proveedores</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="productos.html">Productos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ventas.html">Ventas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Reportes</a>
        </li>

      </ul>
      <form role="form">
        <div class="container-fluid">
            <div class="row">
              <div class="col-md-12">
                <div class="row">
                  <div class="col-md-1" id="izq">
                    <form role="form">
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          
                        </label>
                        
                      </div>
                    </form>
                      </div>
                  <div class="col-md-4" id="izq">
                    <form role="form">
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          
                        </label>
                        
                      </div>
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          Cédula
                        </label>
                        <input type="text" class="form-control" id="cedula"/>
                      </div>
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          Nombre Completo
                        </label>
                        <input type="text" class="form-control" id="nombre"/>
                      </div>
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          Correo Electrónico

                        </label>
                        <input type="text" class="form-control" id="correo" />
                      </div>
                      
                      
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          
                        </label>
                        
                      </div>
                      <button type="submit" class="btn btn-primary">
                        Consultar
                      </button>
                      <button type="submit" class="btn btn-primary" onclick="agregarUsuario()">
                        Crear
                      </button>
                      <button type="submit" class="btn btn-primary" onclick="Usuario()">
                        Editar
                      </button>
                      <button type="submit" class="btn btn-primary">
                        Borrar
                      </button>   
                    </form>
                  </div>
                  <div class="col-md-4" id="#der">
                    <form role="form">
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          
                        </label>
                        
                      </div>
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          Usuario
                        </label>
                        <input type="email" class="form-control"  id="usuario"/>
                      </div>
                      <div class="form-group">
                         
                        <label for="exampleInputPassword1">
                          Contraseña
                        </label>
                        <input type="password" class="form-control" id="pass" />
                      </div>
                      
                      
                    </form>
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