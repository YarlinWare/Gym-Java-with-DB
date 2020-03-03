<%-- 
    Document   : formRegistro
    Created on : 26/10/2019, 02:52:59 PM
    Author     : rapterpakfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Registro</title>
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
        <div class="card-header text-center">
            <h2 class="titulo">Información de registro</h2>
        </div>
        <form action="Registro" name="Form1" id="Form1" enctype="multipart/form-data" target="_blank" class="pt-3 pb-5" >
            <div class="row ">
                <!-- Datos basicos-->			
                <div class="col-sm-12 col-md-6">
                    <div class="form-group">
                        <label for="name1">Usuario</label>
                        <input type="text" class="form-control" id="name1" name="name1" placeholder="Usuario">
                    </div>
                    <div class="form-group">
                        <label for="email1">Email address</label>
                        <input type="email" class="form-control" id="email1" name="email1" placeholder="name@example.com">
                    </div>
                    <div class="form-group ">
                        <label for="pass1">Password</label>
                        <input type="password" class="form-control" id="pass1" name="pass1" placeholder="*********">
                    </div>
                    <div class="form-group ">
                        <label for="pass2">Confirmar password</label>
                        <input type="password" class="form-control" id="pass2" name="pass2" placeholder="*********">
                    </div>
                    <div class="form-group ">
                        <label for="celphone">Celular</label>
                        <input type="number" class="form-control" id="celphone" name="celphone" placeholder="300-987 65 43">
                    </div>
                </div>
                <!-- ./Datos basicos-->

                <!-- Información médica-->
                <div class="col-sm-12 col-md-6">
                    <div class="form-group ">
                        <label for="edad">Edad</label>
                        <input type="number" class="form-control" id="edad" name="edad" placeholder="20 años">
                    </div>
                    <div class="form-group ">
                        <label for="Estatura">Estatura (cm)</label>
                        <input type="number" class="form-control" id="estatura" name="estatura" placeholder="170 cm">	
                    </div>
                    <div class="form-group ">
                        <label for="peso">Peso (kg)</label>
                        <input type="number" class="form-control" id="peso" name="peso" placeholder="56kg">
                    </div>
                    <div class="form-group ">
                        <label for="historial">Historial clínico</label>
                        <textarea class="form-control" id="historial" name="historial" placeholder="Indica acerca de probleams de salud, cirugias, tratamientos, alergias, entre otros." rows="5"></textarea>
                    </div>					
                </div> 
                
                
                <!-- Registro de rutina -->
                <div class="container ">
                    <div class="card-header text-center">
                        <h2 class="titulo">Plan de ejercicios</h2>
                    </div>
                    
                    <fieldset class="form-group">
                      <div class="row">
                        <legend class="col-form-label col-sm-2 pt-0">Seleccione Objetivo</legend>
                        <div class="col-sm-10   d-flex justify-content-between">
                          <div class="form-check">
                            <input class="form-check-input" type="radio" 
                                   name="Objetivo" id="PerderPeso" 
                                   value="PerderPeso" >
                            <label class="form-check-label" for="PerderPeso">
                             Perder peso
                            </label>
                          </div>
                          <div class="form-check">
                            <input class="form-check-input" type="radio" 
                                   name="Objetivo" id="AumentarMasa"
                                   value="AumentarMasa">
                            <label class="form-check-label" for="AumentarMasa">
                              Aumentar masa
                            </label>
                          </div>
                          <div class="form-check ">
                            <input class="form-check-input" type="radio" 
                                   name="Objetivo" id="ResistenciaFisica" 
                                   value="ResistenciaFisica">
                            <label class="form-check-label" for="ResistenciaFisica">
                              Aumentar resistencia fisica
                            </label>
                          </div>
                        </div>
                      </div>
                    </fieldset>
                    <h4>Seleccione los días que desea trabajar</h4>
                    <div class="d-flex justify-content-between">                         
                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="Lunes" >
                            <label class="custom-control-label" for="Lunes">Lunes</label>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="Martes" >
                            <label class="custom-control-label" for="Martes">Martes</label>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="Miercoles" >
                            <label class="custom-control-label" for="Miercoles">Miércoles</label>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="Jueves" >
                            <label class="custom-control-label" for="Jueves">Jueves</label>
                        </div>
                        <div class="custom-control custom-checkbox mb-3 ">
                            <input type="checkbox" class="custom-control-input" id="Viernes" >
                            <label class="custom-control-label" for="Viernes">Viernes</label>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="Sabado" >
                            <label class="custom-control-label" for="Sabado">Sábado</label>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="Domingo" >
                            <label class="custom-control-label" for="Domingo">Domingo</label>                            
                        </div>
                    </div>
                    
                </div>
                <!-- -->
            </div>
            <input type="submit" class="btn btn-info btn-lg btn-block" value="Registrar">            
        </form><br> <br> <br> <br>
    </div>
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