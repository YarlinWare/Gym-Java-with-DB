<%-- 
    Document   : impresion
    Created on : 12-sep-2019, 10:52:18
    Author     : estudiantes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Imprimi</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style_imprimir.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Teko|Yanone+Kaffeesatz&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <br>	
            <div class="encabezado">		
                <span id="name"></span> <span id="lastname1"></span> <span id="lastname2"></span>			
                <br>
                <div class="info-adicional">
                    <span id="document"></span>:<span id="numberdocument"></span>
                    <br>
                    <strong>Tel:</strong><span id="tel"></span>					
                    <br>
                    <strong>E-mail:</strong><span id="correo"></span>				
                </div>

                <div class="img-perfil">
                    <img src="img/perfil.jpg" alt="">
                </div>
            </div>
            <h3 class="input-header">Datos personales</h3>
            <hr>

            <table class="info-complemento1">
                <tr rowspan="7" class="borde-left"></tr>
                <tbody>

                    <tr>
                        <th class="input-header">Nacionalidad</th>
                        <th class="input-header">País</th>
                    </tr>
                    <tr rowspan="2">

                        <td class="info-user" id="nacionalidad"></td>
                        <td class="info-user" id="pais_origen"></td>
                    </tr>
                    <tr>
                        <th class="input-header" colspan="2">Fecha y lugar de nacimiento</th>
                        <th class="input-header" colspan="2">Dirección de correspondencia</th>
                    </tr>
                    <tr>
                        <th class="input-header-sub" rowspan="1">Fecha</td>
                        <td class="info-user" rowspan="1" id="date_nac"></td>	
                        <td class="info-user" colspan="2" id="direccion-correspondencia"></td>							
                    </tr>
                    <tr>
                        <th class="input-header-sub" >Pais</td>
                        <td class="info-user" id="pais_nac"></td>
                        <th class="input-header-sub" >Pais</td>
                        <td class="info-user" id="pais_corresp"></td>					
                    </tr>
                    <tr>
                        <td class="input-header-sub">Depto</td>
                        <td class="info-user" id="depto_nac"></td>	
                        <td class="input-header-sub">Depto</td>
                        <td class="info-user" id="depto_corresp"></td>				
                    </tr>
                    <tr>
                        <td class="input-header-sub">Municipio</td>
                        <td class="info-user" id="muni_nac"></td>
                        <td class="input-header-sub">Municipio</td>
                        <td class="info-user" id="municipio_corresp"></td>
                    </tr>


                </tbody>
            </table>
            <h3 class="input-header">Información Académica</h3>
            <hr>
            <table>
                <tbody>
                    <tr><span class="input-header">Educación Superior</span></tr>
                <tr>
                    <th class="input-header-sub">Instituto</th>
                    <td class="info-user" id="instituto1"></td>
                    <td class="input-header-sub">Título obtenido</td>
                    <td class="info-user" id="titulo1" ></td>
                </tr>
                <tr>
                    <td class="input-header-sub">Inicio</td>
                    <td class="info-user" id="fechInicio1"></td>
                    <td class="input-header-sub">Estado</td>
                    <td class="info-user" id="estado1"></td>				
                </tr><br>
                <tr>
                    <th class="input-header-sub">Instituto</th>
                    <td class="info-user" id="instituto2"></td>
                    <td class="input-header-sub">Título obtenido</td>
                    <td  class="info-user" id="titulo2"></td>
                </tr>
                <tr>
                    <td class="input-header-sub">Inicio</td>
                    <td class="info-user" id="fechInicio2" ></td>
                    <td class="input-header-sub">Estado</td>
                    <td class="info-user" id="estado2"></td>				
                </tr><br>
                <tr>
                    <th class="input-header-sub">Instituto</th>
                    <td class="info-user" id="instituto3"></td>
                    <td class="input-header-sub">Título obtenido</td>
                    <td class="info-user" id="titulo3" ></td>
                </tr>
                <tr>
                    <td class="input-header-sub">Inicio</td>
                    <td class="info-user" id="fechInicio3" ></td>
                    <td class="input-header-sub">Estado</td>
                    <td class="info-user" id="estado3"></td>				
                </tr>
                </tbody>
            </table>
            <br>
            <h3 class="input-header">Experiencia laboral</h3>
            <hr>
            <table>
                <tr>
                    <th class="input-header-sub">Empresa</th>
                    <td class="info-user" colspan="3" id="Empresa1"></td>
                </tr>
                <tr>
                    <td class="input-header-sub">Tiempo laborado</td>
                    <td class="info-user" id="tiempo_labor1" ></td>
                    <td class="input-header-sub">Cargo</td>
                    <td class="info-user" id="cargo1"></td>				
                </tr>
                <tr><th class="input-header-sub">Empresa</th>
                    <td class="info-user" colspan="3" id="Empresa2"></td>
                </tr>
                <tr>
                    <td class="input-header-sub">Tiempo laborado</td>
                    <td class="info-user" id="tiempo_labor2"></td>
                    <td class="input-header-sub">Cargo</td>
                    <td class="info-user" id="cargo2"></td>				
                </tr>
                <tr>
                    <th class="input-header-sub">Empresa</th>
                    <td class="info-user" colspan="3" id="Empresa3"></td>
                </tr>
                <tr>
                    <td class="input-header-sub">Tiempo laborado</td>
                    <td class="info-user" id="tiempo_labor3"></td>
                    <td class="input-header-sub">Cargo</td>
                    <td class="info-user" id="cargo3"></td>				
                </tr>			
            </table>
            <br>
            <!--
                    LocalStorage
                    <script type='text/javascript' src="js/capturando.js"></script>
            -->
            <script type='text/javascript' src="js/capturando2.js"></script>
            <script></script>
    </body>
</html>
