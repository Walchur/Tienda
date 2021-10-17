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
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <h1>
		Actualizar
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
                        <input type="text" class="form-control" />
                      </div>
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          Nombre Completo
                        </label>
                        <input type="text" class="form-control" />
                      </div>
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          Correo Electrónico

                        </label>
                        <input type="text" class="form-control" id="exampleInputEmail1" />
                      </div>
                      
                      
                      <div class="form-group">
                         
                        <label for="exampleInputEmail1">
                          
                        </label>
                        
                      </div>
                      <button type="submit" class="btn btn-primary">
                        Consultar
                      </button>
                      <button type="submit" class="btn btn-primary">
                        Crear
                      </button>
                      <button type="submit" class="btn btn-primary">
                        Actualizar
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
                        <input type="email" class="form-control"  />
                      </div>
                      <div class="form-group">
                         
                        <label for="exampleInputPassword1">
                          Contraseña
                        </label>
                        <input type="password" class="form-control" id="exampleInputPassword1" />
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