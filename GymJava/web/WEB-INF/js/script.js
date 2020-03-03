/*Almacenando datos*/
Form1.addEventListener('submit', function (event) {

	/* Declarando variables*/
	//Datos personales
	var lastname1 = document.getElementById('lastname1').value;	
	localStorage.setItem('lastname1',lastname1);
	var lastname2 = document.getElementById('lastname2').value;	
	localStorage.setItem('lastname2',lastname2);
	var name = document.getElementById('name').value;	
	localStorage.setItem('name',name);

	var cc = document.getElementById('cc').value;	
	localStorage.setItem('cc',cc);
	var ce = document.getElementById('ce').value;	
	localStorage.setItem('ce',ce);
	var passport = document.getElementById('passport').value;	
	localStorage.setItem('passport',passport);

	var numberdocument = document.getElementById('number-document').value;	
	localStorage.setItem('numberdocument',numberdocument);
	var nacionalidad = document.getElementById('nacionalidad').value;	
	localStorage.setItem('nacionalidad',nacionalidad);
	var pais_origen = document.getElementById('pais_origen').value;	
	localStorage.setItem('pais_origen',pais_origen);

	var date_nac = document.getElementById('date_nac').value;	
	localStorage.setItem('date_nac',date_nac);
	var direccion_correspondencia = document.getElementById('direccion-correspondencia').value;	
	localStorage.setItem('direccion_correspondencia',direccion_correspondencia);
	var pais_nac = document.getElementById('pais_nac').value;	
	localStorage.setItem('pais_nac',pais_nac);
	var pais_corresp = document.getElementById('pais_corresp').value;	
	localStorage.setItem('pais_corresp',pais_corresp);
	var depto_nac = document.getElementById('depto_nac').value;	
	localStorage.setItem('depto_nac',depto_nac);
	var depto_corresp = document.getElementById('depto_corresp').value;	
	localStorage.setItem('depto_corresp',depto_corresp);
	var muni_nac = document.getElementById('muni_nac').value;	
	localStorage.setItem('muni_nac',muni_nac);
	var municipio_corresp = document.getElementById('municipio_corresp').value;	
	localStorage.setItem('municipio_corresp',municipio_corresp);
	var tel = document.getElementById('tel').value;	
	localStorage.setItem('tel',tel);
	var correo = document.getElementById('correo').value;	
	localStorage.setItem('correo',correo);	

	//Información Académica
	var instituto1 = document.getElementById('instituto1').value;	
	localStorage.setItem('instituto1',instituto1);
	var titulo1 = document.getElementById('titulo1').value;	
	localStorage.setItem('titulo1',titulo1);
	var fechInicio1 = document.getElementById('fechInicio1').value;	
	localStorage.setItem('fechInicio1',fechInicio1);
	var estado1 = document.getElementById('estado1').value;	
	localStorage.setItem('estado1',estado1);

	var instituto2 = document.getElementById('instituto2').value;	
	localStorage.setItem('instituto2',instituto2);
	var titulo2 = document.getElementById('titulo2').value;	
	localStorage.setItem('titulo2',titulo2);
	var fechInicio2 = document.getElementById('fechInicio2').value;	
	localStorage.setItem('fechInicio2',fechInicio2);
	var estado2 = document.getElementById('estado2').value;	
	localStorage.setItem('estado2',estado2);

	var instituto3 = document.getElementById('instituto3').value;	
	localStorage.setItem('instituto3',instituto3);
	var titulo3 = document.getElementById('titulo3').value;	
	localStorage.setItem('titulo3',titulo3);
	var fechInicio3 = document.getElementById('fechInicio3').value;	
	localStorage.setItem('fechInicio3',fechInicio3);
	var estado3 = document.getElementById('estado3').value;	
	localStorage.setItem('estado3',estado3);


	//Experiencia laboral
	var Empresa1 = document.getElementById('Empresa1').value;	
	localStorage.setItem('Empresa1',Empresa1);
	var tiempo_labor1 = document.getElementById('tiempo_labor1').value;	
	localStorage.setItem('tiempo_labor1',tiempo_labor1);
	var cargo1 = document.getElementById('cargo1').value;	
	localStorage.setItem('cargo1',cargo1);

	var Empresa2 = document.getElementById('Empresa2').value;	
	localStorage.setItem('Empresa2',Empresa2);
	var tiempo_labor2 = document.getElementById('tiempo_labor2').value;	
	localStorage.setItem('tiempo_labor2',tiempo_labor2);
	var cargo2 = document.getElementById('cargo2').value;	
	localStorage.setItem('cargo2',cargo2);

	var Empresa3 = document.getElementById('Empresa3').value;	
	localStorage.setItem('Empresa3',Empresa3);
	var tiempo_labor3 = document.getElementById('tiempo_labor3').value;	
	localStorage.setItem('tiempo_labor3',tiempo_labor3);
	var cargo3 = document.getElementById('cargo3').value;	
	localStorage.setItem('cargo3',cargo3);

	//Imagen de perfil


}, false);

