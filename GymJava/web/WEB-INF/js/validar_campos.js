function validar(){
		var flag =false;

		if(document.getElementById('name').value==""){
		    alert("El nombre no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('lastname1').value==""){
		    alert("El apellido no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('lastname2').value==""){
		    alert("El segundo apellido no puede ser vacio");
		    flag=false;
		    return;
		}
		/*-----------------------------------------------*/

		if(document.getElementById('numberdocument').value==""){
		    alert("El numero de documento no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('nacionalidad').value==""){
		    alert("La nacionalidad no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('lastname2').value==""){
		    alert("El pais de origen no puede ser vacio");
		    flag=false;
		    return;
		}

		/*-----------------------------------------------*/

		if(document.getElementById('date_nac').value==""){
		    alert("La fecha de nacimiento no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('direccion-correspondencia').value==""){
		    alert("La direccion de correspondencia no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('pais_nac').value==""){
		    alert("El pais de nacimiento no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('depto_nac').value==""){
		    alert("La departamento de nacimiento no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('muni_nac').value==""){
		    alert("El municipio de nacimiento no puede ser vacio");
		    flag=false;
		    return;
		}


	/*-----------------------------------------------*/

		if(document.getElementById('pais_corresp').value==""){
		    alert("El país de correspondencia no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('depto_corresp').value==""){
		    alert("El departamento de correspondencia no puede ser vacio");
		    flag=false;
		    return;
		}
		if(document.getElementById('municipio_corresp').value==""){
		    alert("El municipio de correspondencia no puede ser vacio");
		    flag=false;
		    return;
		}
		
	/*-----------------------------------------------*/

		if(document.getElementById('tel').value==""){
		    alert("El teléfono no puede ser vacio");

		    flag=false;
		    return;
		}
		if(document.getElementById('correo').value==""){
		    alert("El correo de correspondencia no puede ser vacio");
		    flag=false;
		    return;
		}

	/*-----------------------------------------------*/


		if(
			(document.getElementById('instituto1').value==""|| 
			document.getElementById('instituto2').value=="") || 
			document.getElementById('instituto3').value==""
		  ){
		    alert("El instituto no puede ser vacio");
		    flag=false;
		    return;
		}
		if(
			(document.getElementById('titulo1').value==""|| 
			document.getElementById('titulo2').value=="") || 
			document.getElementById('titulo3').value==""){
		    alert("El título no puede ser vacio");
		    flag=false;
		    return;
		}
		if(
			(document.getElementById('fechInicio1').value==""|| 
			document.getElementById('fechInicio2').value=="") || 
			document.getElementById('fechInicio3').value==""){
		    alert("La fecha de inicio no puede ser vacio");
		    flag=false;
		    return;
		}
		if(
			(document.getElementById('estado1').value=="" || 
			 document.getElementById('estado2').value=="") || 
			document.getElementById('estado3').value==""){
		    alert("El estao académico no puede ser vacio");
		  }

	/*-----------------------------------------------*/

		if (
			(document.getElementById('Empresa1').value==""|| 
			 document.getElementById('Empresa2').value=="") || 
			document.getElementById('Empresa3').value==""){
		    alert("La empresa no puede ser vacio");
		    flag=false;
		    return;
		}
		if (
			(document.getElementById('tiempo_labor1').value==""|| 
			 document.getElementById('tiempo_labor2').value=="") || 
			document.getElementById('tiempo_labor3').value=="")
			{
		    alert("El tiempo laboral no puede ser vacio");
		    flag=false;
		    return;
		}
		if (
			(document.getElementById('cargo1').value==""|| 
			document.getElementById('cargo2').value=="") || 
			document.getElementById('cargo3').value==""){
		    alert("El cargo no puede ser vacio");
		    }

		if (flag==true) {
			alert("Formulario completo " + document.getElementById("nombre").value);
			document.getElementById('Form1').action="imprimir2.html";		
			return;
		}
	}