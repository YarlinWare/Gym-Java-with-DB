<%-- 
    Document   : index
    Created on : 26/10/2019, 02:52:07 PM
    Author     : rapterpakfa
--%>
<%@page import="java.util.List"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBRutinas"%>
<%@page import="rutina.Rutina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Seleccionar Ejercicios</title>
	<!-- css Bootstrap-->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Fuentes -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Abel|Anton&display=swap" rel="stylesheet">
    <!-- css estilos-->
	<link rel="stylesheet" href="css/estilos.css">
</head>
<body>

	<!-- Menu superior -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark row justify-content-between">
		<a href="index.jsp" class="navbar-brand pl-3 ">
			<img src="img/logo.png" width="auto" height="40" alt="">
		</a>

		<div class="d-flex aling-item-end pr-3 btn-ingreso-registro">
			<a href="login.jsp" class="btn btn-ingreso">Ingresar</a>
			<a href="formRegistro.jsp" class="btn btn-info">Registrar</a>
		</div>
	</nav>
	<!-- Carrucel -->
	<div class="bd-example">
	  <div id="carousel-1" class="carousel slide" data-ride="carousel">

		<!-- Indicadores -->		
	    <ol class="carousel-indicators">
	      <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
	      <li data-target="#carousel-1" data-slide-to="1"></li>
	      <li data-target="#carousel-1" data-slide-to="2"></li>
	    </ol>
		<!-- Indicadores -->

		<!-- Contenedor de los slide-->
	    <div class="carousel-inner" role="listbox">
	      <div class="carousel-item active">
			<img src="img/fitness-3.jpg" class="img-responsive d-block w-100" alt="...">
			<div class="carousel-caption d-none d-md-block caroucel-text">
				<h5 style="font-family: 'Anton', sans-serif;">First slide label</h5>
				<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="img/fitness-1.jpg" class="img-responsive d-block w-100" alt="...">
			<div class="carousel-caption d-none d-md-block caroucel-text">
				<h5 style="font-family: 'Anton', sans-serif;">Second slide label</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="img/fitness-3.jpg" class="img-responsive d-block w-100" alt="...">
			<div class="carousel-caption d-none d-md-block caroucel-text">
				<h5 style="font-family: 'Anton', sans-serif;">Third slide label</h5>
				<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
			</div>
		</div>
	     
	    </div>
		<!-- ./Contenedor de los slide-->	

		<!-- Control lateral de los slide-->	  
	    <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
	      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next">
	      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	    <!-- ./Control lateral de los slide-->	 
	  </div>
	</div>
	<!-- ./Carrucel -->
    
    <%  DBRutinas dbr = new DBRutinas();
        ResultSet rutina = dbr.getRutinas();  
       
    %>
    <div class="container">
    <table  class="mt-5 table table-responsive-md">
            <tr>
                <thead class="thead-dark">
                    <th scope="col">Ejercicio</th>
                    <th scope="col">Descripcion</th>
                    <th scope="col">Repeticiones</th>
                    <th scope="col">Peso</th>
                    <th scope="col">Acciones</th>
                </thead>
            </tr>
                <% while (rutina.next()){ %>
                    <tr>
                        <td><%= rutina.getString("rut_nombre") %></td>
                        <td><%= rutina.getString("rut_descripcion") %></td>                        
                        <td><%= rutina.getString("rut_repeticiones") %></td>
                        <td><%= rutina.getString("rut_peso") %></td>
                        <td class="links">
                            <a href="CargarRutina?opc=edit&idx=<%= rutina.getString("rut_id") %>">Editar</a>
                            <a href="CargarRutina?opc=delete&idx=<%= rutina.getString("rut_id") %>">Borrar</a>
                        </td>
                    </tr>
                <% }%>
                <tr>
                    <!--<td colspan="5" class="links"><a href="insertar_contacto.jsp">Agregar</a></td>-->
            </tr>
            <tr>
                <thead class="thead-dark">
                    <th scope="col">Ejercicio</th>
                    <th scope="col">Descripcion</th>
                    <th scope="col">Repeticiones</th>
                    <th scope="col">Peso</th>
                    <th scope="col">Acciones</th>
                </thead>
            </tr>
        </table>
        
        </div>
	<!-- Contenido -->
	<div class="container">
		<!-- Cartas actividades -->
		<div class="row pt-5 pb-5 d-flex align-items-center ">
			<div class="col-12 col-sm-12 col-md-4 d-flex justify-content-center ">
				<div class="card" style="width: 18rem;">
				  <img src="img/fitness-3.jpg" class="card-img-top" alt="...">
				  <div class="card-body" style="font-family: 'Abel', sans-serif;">
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				  </div>
				</div>
			</div>
			<div class="col-12 ol-sm-12 col-md-4 d-flex justify-content-center  ">
				<div class="card" style="width: 18rem;">
				  <img src="img/fitness-1.jpg" class="card-img-top" alt="...">
				  <div class="card-body" style="font-family: 'Abel', sans-serif;">
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				  </div>
				</div>
			</div>
			<div class="col-12 col-sm-12 col-md-4 d-flex justify-content-center ">
				<div class="card" style="width: 18rem;">
				  <img src="img/fitness-2.jpg" class="card-img-top" alt="...">
				  <div class="card-body" style="font-family: 'Abel', sans-serif;">
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				  </div>
				</div>
			</div>
		</div>
		<!-- Cartas actividades -->

		<!-- Tarjeta de inscripción -->
		<div class="card text-center">
		  <div class="card-header text-white bg-danger">
		    <h3 style="font-family: 'Anton', sans-serif;">Conquista todos tus objetivos</h3>
		  </div>
		  <div class="card-body">
		    <h5 class="card-title"  style="font-family: 'Anton', sans-serif;">No hay excusas para iniciar</h5>
		    <p class="card-text">Sabemos que estás dispuesto a darlo todo para alcanzar tus metas. Conoce más servicios y complementa tu entrenamiento.</p>
		    <a href="#" class="btn btn-primary">Inscribirse</a>
		  </div>
		  <div class="card-footer text-muted ">
		    registrate con 3 amigo y tu inscripción será totalmente gratis
		  </div>
		</div><br>
		<!-- Tarjeta de inscripción -->

		<!-- Boletín -->
	 	<div class="card">		  
		  <img src="img/fitness-4.jpg" class="card-img-top" alt="...">
		</div>

		<div class="card text-center text-white bg-info ">
		  <div class="card-body">
		  	<div class="row d-flex align-items-center">
		  		<div class="col-md-6 pt-3 pb-3">
					<h2  style="font-family: 'Anton', sans-serif;">Boletín</h2>
					<span>Suscríbete a nuestro boletín para recibir información de entrenamiento, nutrición y promociones.</span>
				</div>

				<div class="col-md-6 pt-3 pb-3">
					<form class="form-inlin">
					    <div class="form-group mx-sm-3 mb-2 d-flex align-item-center">
					        <input type="password" class="form-control" id="inputPassword2" placeholder="Email">
					        <button type="submit" class="btn btn-primary mb-2">Enviar</button>
					    </div>
					    
					    <br>
					    <div class="form-group form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck1">
							<span class="form-check-label" for="exampleCheck1">Acepto los <a href="">términos y condiciones </a> y <a href=""> políticas de tratamiento de datos</a>
							</span>
						</div>
					</form>
					
				</div>
		  	</div>
		</div>
		</div>
		<!-- Boletín -->
	</div><br> <br> <br> <br>  <br> <br> 

	<br><hr>
	<!-- ./Contenido -->


	<!-- Pié de página -->
    <footer class="footer text-faded text-center py-5 navbar-dark bg-dark" style="color:#fff">
      <div class="container">
        <p class="m-0">
	        <a href="#" class="link ">
	          <span class="fa-stack fa-lg" style="color:#17a2b8">
	            <i class="fa fa-circle fa-stack-2x"></i>
	            <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
	          </span>
	        </a>
	        <a href="#" class="link">
	          <span class="fa-stack fa-lg"  style="color:#17a2b8">
	            <i class="fa fa-circle fa-stack-2x"></i>
	            <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
	          </span>
	        </a>
	        <a href="#" class="link">
	          <span class="fa-stack fa-lg"  style="color:#17a2b8">
	            <i class="fa fa-circle fa-stack-2x"></i>
	            <i class="fa fa-instagram fa-stack-1x fa-inverse"></i>
	          </span>
	        </a>
	    </p>
        <p class="m-0 mbt">
        	<a href="#" class="link">Política de privacidad</a> ·
        	<a href="#" class="link">Aviso legal</a> ·
        	<a href="#" class="link">Cookies</a>
		</p>
        <p class="m-0 mbt1 ">&copy; IGE Gym 2018</p>
      </div>
	</footer>
	<!-- ./Pié de página -->

	<!-- Scripts Bootstrap-->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script src="js/jquery-3.3.1.slim.min.js" ></script>
	<script src="js/popper.min.js" ></script>
	<!-- ./Scripts Bootstrap-->	
	<script>
		$('.carousel').carousel({
		  interval: 200,
		  pause	string: "hover"
		});
	</script>
</body>
</html>
