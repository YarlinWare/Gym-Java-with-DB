<%-- 
    Document   : login
    Created on : 26/10/2019, 02:54:15 PM
    Author     : rapterpakfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
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


  <!-- Contenido -->  
  <div class="container pt-5 pb-5">
    <div class="row justify-content-center">
      <div class="">
        <form class="form" method="POST" action="j_security_check">
          <div class="contain_form">
            <fieldset class="login_fieldset">
              
              <h3 class="text-center">GYM</h3>
             
              <hr>
              <h4 style="color:red;"> Usuario o contraseña erroneo</h4>
              <div class="form-group columns_div">
                <label>Usuario</label>              
                <input type="text" class="form-control" id="j_username" name="j_username" placeholder="Usuario">
                <label>Password</label>
                <input type="password" class="form-control" id="j_password" name="j_password" placeholder="password">

                <div class="row pt-3">
                  <div class="col-6">
                    <a href="#"><span>Registrar</span></a>
                  </div> 
                  <div class="col-6">
                    <input type="submit" class="btn btn-info" value="Ingresar">
                  </div>            
                </div>  

                <br>
                <a href="#" class="forget">Olvido su contraseña?</a>

              </div>              
            </fieldset> 
          </div>  
        </form>
      </div>      
    </div>    
  </div>
  

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
</body>
</html>