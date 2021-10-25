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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
          <a class="nav-link active" href="usuarios.jsp">Usuarios</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cliente.jsp">Clientes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="proveedores.jsp">Proveedores</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="productos.jsp">Productos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ClienteController1?menu=registrarventa&accion=default">Ventas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="reportes1.jsp">Reportes</a>
        </li>
      </ul>

    </div>
  </div>
</div>
      <br>
      
      <div class="d-flex">
        <div class="col-md-1"></div>
            <div class="col-sm-4">
              <div class="card">
              <form  action= "ClienteController?menu=Ventas" method="POST"> 
                <div class="card-body">
                  <div class="form-group"> 
                    <label>
                      Cédula
                    </label>
                  </div>
                  <div class="form-group d-flex">
                    <div class="col-md-6 d-flex" >
                      <input type="text" name="cedula" value="${cli.getCedulaCliente()}" id="cedula" class="form-control"  />
                      <input type="submit" name="accion" value="ConsultarCliente" class="btn btn-primary">
                    </div>
                    <div class="col-md-1"></div>   
                    <div class="col-md-5">

                      <input type="text" name="nombrescliente" value="${cli.getNombreCliente()}" id="nombrescliente" class="form-control col-md-6">
                    </div>
                  </div>
                  <div>
                    <br>
                  </div>
                  <div class="form-group">
                    <label>Datos Productos</label>
                  </div>
                  <div class="form-group d-flex">
                    <div class="col-md-6 d-flex" >
                      <input type="text" name="codigoproducto" class="form-control"  />
                      <input type="submit" name="accion" value="buscarproducto" class="btn btn-primary">
                    </div>
                    <div class="col-md-1"></div>    
                    <div class="col-md-5">
                      <input type="text" name="nombresproducto" class="form-control col-md-6">
                    </div>
                  </div>
                  <div>
                    <br>
                  </div>

                  <div class="form-group d-flex">
                    <div class="col-md-6 d-flex " >
                      <input type="text" name="precio" placeholder="$" class="form-control"  />

                    </div>
                    <div class="col-md-1"></div>

                    <div class="col-md-2">
                      <input type="number" name="cant" value="buscar" class="form-control">
                    </div>
                    <div class="col-md-1"></div>                
                    <div class="col-md-2">
                      <input type="text" name="stock" placeholder="Stock" class="form-control col-md-6">
                    </div>
                  </div>
                  <br>
                  <div> 
                    <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                  </div>
                </div>
              </form>
              </div>
            </div>
                     <div class="col-md-1"></div>
        <div class="col-md-5">
          <div class="card">
            <div class="card-body">
              <div class="d-flex col-sm-5 ms-auto p-2"> 
              <label>NumeroSerie</label>           
                <input type="text" name="NroSerie" class="form-control">
              </div>
              <br>
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>Nro</th>
                    <th>Código</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>SubTotal</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tbody>
              </table>
            </div>
            <div class="card-footer">
              <div>
                <input type="submit" name="accion" value="Generar Venta" class="btn btn-success">
                <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
              </div>
            </div>
          </div>
        </div>
      </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>         

 </body>
</html>