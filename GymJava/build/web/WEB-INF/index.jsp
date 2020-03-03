<%-- 
    Document   : index
    Created on : 12-sep-2019, 10:52:10
    Author     : estudiantes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hoja de vida</title>	
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">	
    </head>
    <body class="row">
        <div class="container">
            <br>	
            <form method="GET" action="impresion.jsp" name="Form1" id="Form1" enctype="multipart/form-data" target="_blank"> 	
                <h3>Datos personales</h3>
                <table >
                    <tbody>
                        <tr>
                            <th class="input-header">Primer apellido</th>
                            <th class="input-header">Segundo apellido</th>
                            <th class="input-header" colspan="2">Nombres</th>
                        </tr>
                        <tr>
                            <td><input type="text" name="lastname1" id="lastname1"></td>
                            <td><input type="text" name="lastname2" id="lastname2"></td>
                            <td colspan="2"><input name="name" type="text" id="name"></td>
                        </tr>
                        <tr>
                            <th class="input-header" colspan="2">Documento de identificación</th>
                            <th class="input-header">Nacionalidad</th>
                            <th class="input-header">País</th>
                        </tr>
                        <tr rowspan="2">
                            <td id="document">
                                <span>C.C</span><input type="radio" name="document" value="cc" >
                                <span>C.E</span><input type="radio" name="document" value="ce" >
                                <span>PAS</span><input type="radio" name="document" value="passport">
                            </td>
                            <td><input name="numberdocument" type="number" id="number-document"></td>
                            <td><input name="nacionalidad" type="text" id="nacionalidad"></td>
                            <td><input name="pais_origen" type="text" id="pais_origen"></td>
                        </tr>
                        <tr>
                            <th class="input-header" colspan="2">Fecha y lugar de nacimiento</th>
                            <th class="input-header" colspan="2">Dirección de correspondencia</th>
                        </tr>
                        <tr >
                            <th class="input-header-sub" rowspan="1">Fecha</td>
                            <td rowspan="1"><input name="date_nac" type="date" id="date_nac"></td>	
                            <td colspan="2"><input name="direccioncorrespondencia" type="text" id="direccion-correspondencia"></td>							
                        </tr>
                        <tr>
                            <th class="input-header-sub" >Pais</td>
                            <td ><input name="pais_nac" type="text" id="pais_nac"></td>
                            <th class="input-header-sub" >Pais</td>
                            <td ><input name="pais_corresp" type="text" id="pais_corresp"></td>					
                        </tr>
                        <tr>
                            <td class="input-header-sub">Depto</td>
                            <td><input name="depto_nac" type="text" id="depto_nac"></td>	
                            <td class="input-header-sub">Depto</td>
                            <td><input name="depto_corresp" type="text" id="depto_corresp"></td>				
                        </tr>
                        <tr>
                            <td class="input-header-sub">Municipio</td>
                            <td><input name="muni_nac" type="text" id="muni_nac"></td>
                            <td class="input-header-sub">Municipio</td>
                            <td><input name="municipio_corresp" type="text" id="municipio_corresp"></td>
                        </tr>
                        <tr>
                            <th class="input-header-sub">Teléfono</th>
                            <td><input name="tel" type="number" id="tel"></td>
                            <th class="input-header-sub">Correo</th>
                            <td><input name="correo" type="email" id="correo"></td>				
                        </tr>

                    </tbody>
                </table>
                <br>
                <h3 class="input-header">Información Académica</h3>
                <table>
                    <tbody>
                        <tr><span class="input-header">Educación Superior</span></tr>
                    <tr>
                        <th class="input-header-sub">Instituto</th>
                        <td ><input name="instituto1" type="text" id="instituto1"></td>
                        <td class="input-header-sub">Título obtenido</td>
                        <td><input name="titulo1" type="text" id="titulo1" ></td>
                    </tr>
                    <tr>
                        <td class="input-header-sub">Inicio</td>
                        <td><input name="fechInicio1" type="text" id="fechInicio1"></td>
                        <td class="input-header-sub">Estado</td>
                        <!--<td><input type="text" id="estado1"></td>		-->
                        <td>
                            <select name="estado1" id="estado1">
                                <option value="" >-- Selecccionar --</option>
                                <option value="En_curso">En curso</option>
                                <option value="Aplazado">Aplazado</option>
                                <option value="Culminado">Culminado</option>
                            </select>
                        </td>		
                    </tr><br>
                    <tr>
                        <th class="input-header-sub">Instituto</th>
                        <td ><input name="instituto2" type="text"  id="instituto2"></td>
                        <td class="input-header-sub">Título obtenido</td>
                        <td><input name="titulo2" type="text" id="titulo2"></td>
                    </tr>
                    <tr>
                        <td class="input-header-sub">Inicio</td>
                        <td><input name="fechInicio2" type="text" id="fechInicio2" ></td>
                        <td class="input-header-sub">Estado</td>
                        <!--<td><input type="text" id="estado2"></td>		-->
                        <td>
                            <select name="estado1" id="estado2">
                                <option value="" >-- Selecccionar --</option>
                                <option value="En_curso">En curso</option>
                                <option value="Aplazado">Aplazado</option>
                                <option value="Culminado">Culminado</option>
                            </select>
                        </td>				
                    </tr><br>
                    <tr>
                        <th class="input-header-sub">Instituto</th>
                        <td ><input name="instituto3" type="text"  id="instituto3"></td>
                        <td class="input-header-sub">Título obtenido</td>
                        <td><input name="titulo3" type="text" id="titulo3" ></td>
                    </tr>
                    <tr>
                        <td class="input-header-sub">Inicio</td>
                        <td><input name="fechInicio3" type="text" id="fechInicio3" ></td>
                        <td class="input-header-sub">Estado</td>
                        <!--<td><input type="text" id="estado3"></td>		-->
                        <td>
                            <select name="estado3" id="estado3">
                                <option value="" >-- Selecccionar --</option>
                                <option value="En_curso">En curso</option>
                                <option value="Aplazado">Aplazado</option>
                                <option value="Culminado">Culminado</option>
                            </select>
                        </td>			
                    </tr>
                    </tbody>
                </table>
                <br>
                <h3>Experiencia laboral</h3>
                <table>
                    <tr><th class="input-header-sub">Empresa</th>
                        <td colspan="3"><input name="" type="text" id="Empresa1"></td>
                    </tr>
                    <tr>
                        <td class="input-header-sub">Tiempo laborado</td>
                        <td><input name="tiempo_labor1" type="text" id="tiempo_labor1" ></td>
                        <td class="input-header-sub">Cargo</td>
                        <td><input name="cargo1" type="text" id="cargo1"></td>				
                    </tr>
                    <tr><th class="input-header-sub">Empresa</th>
                        <td colspan="3"><input name="Empresa2" type="text" id="Empresa2"></td>
                    </tr>
                    <tr>
                        <td class="input-header-sub">Tiempo laborado</td>
                        <td><input name="tiempo_labor2" type="text" id="tiempo_labor2"></td>
                        <td class="input-header-sub">Cargo</td>
                        <td><input name="cargo2" type="text" id="cargo2"></td>				
                    </tr>
                    <tr>
                        <th class="input-header-sub">Empresa</th>
                        <td colspan="3"><input name="Empresa3" type="text" id="Empresa3"></td>
                    </tr>
                    <tr>
                        <td class="input-header-sub">Tiempo laborado</td>
                        <td><input name="tiempo_labor3" type="text" id="tiempo_labor3"></td>
                        <td class="input-header-sub">Cargo</td>
                        <td><input name="cargo3" type="text" id="cargo3"></td>				
                    </tr>			
                </table>
                <br>
                <h3>Imagen de perfil</h3>
                <table>
                    <tbody>
                        <tr>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupFileAddon01">Imagen de perfil</span>
                        </div>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="inputGroupFile01" >
                            <label class="custom-file-label" for="inputGroupFile01">Buscar imagen</label>
                        </div>
                    </div>
                    </tr>
                    </tbody>
                </table>
                <button type="submit" onclick="validar()">Aceptar</button>
            </form>
        </div>	
        <script type='text/javascript' src="js/validar_campos.js"></script>	
        <script type='text/javascript' src="js/script.js"></script>
    </body>
</html>

