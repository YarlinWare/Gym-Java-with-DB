<%-- 
    Document   : index
    Created on : 26/10/2019, 02:52:07 PM
    Author     : rapterpakfa
--%>

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
        <!-- ./Menu superior -->

        <!-- Contenido -->
        <form id="frmActualizarRutina" action="ActualizarRutina" method="POST">
             <input type="hidden" id="txtId" name="txtId" value="<%= ((Rutina)session.getAttribute("rutina")).getId() %>">
        <table>
            <tr>
                <td>Ejercicio</td>
                <td><input type="text" id="txtEjercicio" name="txtEjercicio" value="<%= ((Rutina)session.getAttribute("rutina")).getNombre() %>"></td>
            </tr>
            <tr>
                <td>Descripción</td>
                <td><input type="text" id="txtDescripcion" name="txtDescripcion" value="<%= ((Rutina)session.getAttribute("rutina")).getDescripcion()%>"></td>
            </tr>
            <tr>
                <td>Repeticiones</td>
                <td><input type="text" id="txtRepeticiones" name="txtRepeticiones" value="<%= ((Rutina)session.getAttribute("rutina")).getRepeticiones()%>"></td>
            </tr>
            <tr>
                <td>Peso</td>
                <td><input type="text" id="txtPeso" name="txtPeso" value="<%= ((Rutina)session.getAttribute("rutina")).getPeso()%>"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="button" value="Aceptar" onclick="submit();"></td>
            </tr>
            
        </table>
        </form>
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

</body>
</html>
