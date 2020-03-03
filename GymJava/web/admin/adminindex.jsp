<%-- 
    Document   : adminindex
    Created on : 5/11/2019, 02:37:58 PM
    Updated    : 20/02/2020 03:37:58 PM
    Author     : Kenji Bernkastell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="registro" scope="request" class="contacto.Contacto" />
<jsp:useBean id="rutina" scope="request" class="logica.RutinaDia" />
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Zona usuarios administradores</title>
		<!-- css Bootstrap-->
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<!-- Fuentes -->
        <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Abel|Anton&display=swap" rel="stylesheet">
        <!-- css estilos-->
	<link rel="stylesheet" href="../css/estilos.css">
</head>
<body >


	<!-- Menu superior -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark row justify-content-between">
		<a href="index.jsp" class="navbar-brand pl-3 ">
			<img src="../img/logo.png" width="auto" height="40" alt="">
		</a>

		<div class="d-flex aling-item-end pr-3 btn-ingreso-registro">
                    <a href="../respuesta.jsp" class="btn btn-ingreso">Mi perfil</a>			
		</div>
	</nav>

	<!-- Contenido -->
	<div class="container">
            <h1>Zona de Usuarios Administradores</h1>
	</div>

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
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/bootstrap.bundle.js"></script>
  <script src="../js/jquery-3.3.1.slim.min.js" ></script>
  <script src="../js/popper.min.js" ></script>
</body>
</html>
