<%-- 
    Document   : resuesta
    Created on : 26/10/2019, 04:13:50 PM
    Author     : rapterpakfa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBRutinas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="registro" scope="request" class="usuario.Usuario" />
<jsp:useBean id="rutina" scope="request" class="logica.RutinaDia" />
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
<body >
    <% DBRutinas dbr = new DBRutinas();
        ResultSet rutina = dbr.getRutinas();
        
    %>
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
    <body>
                     

        <div  id="app">
           <div class="container">  
            <div class="row pt-5 pb-5">
                <label for="staticEmail" class="col-4 col-sm-2 col-form-label"><strong>Nombre</strong></label>
                <div class="col-8 col-sm-4">
                  <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="<jsp:getProperty name="registro" property="nombre" />">
                </div>
                <label for="staticEmail" class="col-4 col-sm-2 col-form-label"><strong>Email</strong></label>
                <div class="col-8 col-sm-4">
                  <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="<jsp:getProperty name="registro" property="correo" />">
                </div>
                <label for="staticEmail" class="col-4 col-sm-2 col-form-label"><strong>Celular</strong></label>
                <div class="col-8 col-sm-4">
                  <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="<jsp:getProperty name="registro" property="celular" />">
                </div>
                <label for="staticEmail" class="col-4 col-sm-2 col-form-label"><strong>Edad</strong></label>
                <div class="col-8 col-sm-4">
                  <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="<jsp:getProperty name="registro" property="edad" />">
                </div>
                <label for="staticEmail" class="col-4 col-sm-2 col-form-label"><strong>Peso</strong></label>
                <div class="col-8 col-sm-4">
                  <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="<jsp:getProperty name="registro" property="peso" />">
                </div>
                <label for="staticEmail" class="col-4 col-sm-2 col-form-label"><strong>Altura</strong></label>
                <div class="col-8 col-sm-4">
                  <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="<jsp:getProperty name="registro" property="altura" />">
                </div>            
            </div>
                
            <table>
            <tr>
                <th>codigo</th><th>nombre</th><th>apellido</th><th>correo</th><th>acciones</th>
            </tr>
                <% while (rutina.next()){ %>
                    <tr>
                        <td><%= rutina.getString("rut_id") %></td>
                        <td><%= rutina.getString("rut_nombre") %></td>
                        <td><%= rutina.getString("rut_descripcion") %></td>
                        <td class="links">
                            <a href="CargarContacto?op=edit&item=<%= rutina.getString("rut_id") %>">Editar</a>
                            <a href="CargarContacto?op=delete&item=<%= rutina.getString("rut_id") %>">Borrar</a>
                        </td>
                    </tr>
                <% }%>
                <tr>
                    <td colspan="5" class="links"><a href="insertar_contacto.jsp">Agregar</a></td>
            </tr>
        </table>
        
            <div class="row">
                <p>  </p>
                <div class="card-header text-white bg-danger ">
		    <h3 style="font-family: 'Anton', sans-serif;">Rutinas</h3>
                </div>                
                <!-- Cartas actividades -->
		<div class="row pt-5 pb-5 pl-4 d-flex justify-content-center ">                    
                    
                    
                    <div v-for="(element, index) in numEjercicios" :key="index" class="col-12 col-sm-12 col-md-4 mb-3 d-flex justify-content-center ">
                        <div class="card" style="width: 18rem;">
                          <img
                               :src="rutinas[element].img"
                               class="card-img-top" alt="...">
                          <div class="card-body" style="font-family: 'Abel', sans-serif;">
                              <h4 v-html="element.nombre"></h4>
                            <p class="card-text" v-html="rutinas[element].descripcion"></p>
                            <p><strong>Repeticiones:</strong> {{rutinas[element].repeticiones}}</p>                            
                            <p v-if="rutinas[element].peso != ''"><strong>peso</strong> {{rutinas[element].peso}}</p>
                          </div>
                        </div>
                    </div>
		</div>                
            </div> 
        </div>   
        <!-- Cartas actividades --> 
 
        </div> <br> <br> <br> <br> 
    </body> 
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
    <script src="js/vue.js" ></script>
    <!-- ./Scripts Bootstrap-->	

    <script>
      var app = new Vue({
        el: '#app',
        data: {
          rutinas:[
              {
                  nombre:'Abdominales ', 
                  descripcion:'Las elevaciones de tronco en el suelo son un \n\
                               que trabajan sobre todo los abdominales, principalmente \n\
                                solicita músculos como el recto mayor del \n\
                                abdomen y recto anterior.', 
                  repeticiones: '5 de 20', 
                  peso:'3kg',
                  img:'img/abdominal.jpg'
              },   
              {
                  nombre:'Pectoral + abdominales', 
                  descripcion:'úmbate sobre un banco, planta bien los pies en el suelo haciendo fuerza con los talones, arquea la espalda, clava los hombros contra el banco y apriétalos hacia el centro. A la hora de subir la barra, mantén los hombros pegados al cuerpo y trata de trazar un arco con la barra.',
                  repeticiones: '6 de 20', 
                  peso:'10gk máx',
                  img:'img/pecho-abdom.jpg'
              },   
              {
                  nombre:'Espalda', 
                  descripcion:'Cuélgate de una barra con las manos un poco más abiertas que la separación de tus hombros y mirando al frente. Sube con el cuerpo a la vez que flexionas los brazos y contraes los músculos de la espalda evitando que el cuello se tense. Baja de un modo controlado.',
                  repeticiones: '5 de 15', 
                  peso:'',
                  img:'img/espalda-1.jpg'
              },   
              {
                  nombre:'Hombros + abdominales', 
                  descripcion:'Siéntate en un banco de espalda baja, mantente en posición erguida y, con las palmas hacia delante, eleva las mancuernas sobre la cabeza a la vez que contraes los músculos de los hombros y extiendes los brazos. Baja lentamente.',
                  repeticiones: '3 de 15', 
                  peso:'',
                  img:'img/hombro-Abdom-1.jpg'
              },   
              {
                  nombre:'Piernas', 
                  descripcion:'De pie, con las piernas abiertas a la altura de las caderas, baja como si te fueras a sentar a la vez que proyectas los glúteos hacia atrás. Baja lo que puedas y no te olvides de mantener la espalda recta. Puedes extender los brazos hacia adelante para ayudar al movimiento.',
                  repeticiones: '5 de 25', 
                  peso:'',
                  img:'img/piernas-1.jpg'
              },   
              {
                  nombre:'Piernas con máquina', 
                  descripcion:' En la máquina correspondiente, colócate con la espalda bien apoyada en el respaldo y con los pies ligeramente separados entre sí. Empuja la plataforma hasta conseguir que las piernas queden casi extendidas; después desbloquea las rodillas y flexiona las piernas hasta que los muslos lleguen al torso pero sin que superen los 90º.',
                  repeticiones: '5 de 20', 
                  peso:'',
                  img:'img/piernas-2.jpg'
              },   
              {
                  nombre:'Brazos + abdominales', 
                  descripcion:' Con las piernas en el aire y el torso ligeramente inclinado, y gracias tan solo al movimiento de los brazos, tienes que subir y bajar tu cuerpo manteniendo las piernas y el torso inmóviles.',
                  repeticiones: '3 de 30', 
                  peso:'5kg a 15kg',
                  img:'img/brazo-abdom.png'
              },   
              {
                  nombre:'Spinning o Ciclo Indoor', 
                  descripcion:'Donde tampoco hay descanso durante el tiempo que dure la clase es en el spinning o, como se le llama ahora, ciclo indoor. Una actividad muy cardiovascular que se centra mucho también en el tren inferior',
                  repeticiones: '3', 
                  peso:'',
                  img:'img/spinning.jpg'
              },   
              {
                  nombre:'Crossfit', 
                  descripcion:'Son muchos nombres, sí, pero todos vienen a significar lo mismo: mover el cuerpo, poner en marcha el corazón, trabajar los músculos y cuidar de nuestra salud.. A partir de aquí, elige el que más te convenza y recuerda.',
                  repeticiones: '5 de 20', 
                  peso:'25kg máx',
                  img:'img/fitness-3.jpg'
              },   
              {
                  nombre:'Cardio', 
                  descripcion:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam porta arcu et metus tincidunt suscipit. Morbi fringilla lobortis fermentum. Cras in lacinia ligula, mattis ultrices tortor. Phasellus scelerisque purus vitae. ',
                  repeticiones: '15 a 30 min', 
                  peso:'',
                  img:'img/fitness-1.jpg'
              },/*   
              {
                  nombre:'', 
                  descripcion:'',
                  repeticiones: 3, 
                  peso:'',
                  img:'img/abdominal.jpg'
              },   
              {
                  nombre:'', 
                  descripcion:'',
                  repeticiones: 3, 
                  peso:'',
                  img:'img/abdominal.jpg'
              },   
              {
                  nombre:'', 
                  descripcion:'',
                  repeticiones: 3, 
                  peso:'',
                  img:'img/abdominal.jpg'
              },   
              {
                  nombre:'', 
                  descripcion:'',
                  repeticiones: 3, 
                  peso:'',
                  img:'img/abdominal.jpg'
              },   
              {
                  nombre:'', 
                  descripcion:'',
                  repeticiones: 3, 
                  peso:'',
                  img:'img/abdominal.jpg'
              }, */
          ],
          dias:[
              'Lunes',
              'Martes',
              'Miercoles',
              'Jueves',
              'Viernes',
              'Sábado',
              'Domingo', 
          ],
          numEjercicios:0,
        },
        created(){
            this.numEjercicios = Math.floor(Math.random() * (this.rutinas.length - 3)) + 3;
            this.rutinas = this.rutinas.sort(function() {return Math.random() - 0.5})
        }
        /*Fuentes:
         * https://www.lekue.com/es/blog/rutina-gimnasio-5-dias-entrenamiento-estar-forma/
         * 
         * 
         * 
         */
      })
    </script>
</body>
</html>