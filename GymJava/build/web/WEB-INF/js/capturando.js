var lastname1_post= document.getElementById('lastname1');
lastname1_post.innerHTML=localStorage.getItem('lastname1');
var lastname2_post= document.getElementById('lastname2');
lastname2_post.innerHTML=localStorage.getItem('lastname2');
var name_post= document.getElementById('name');
name_post.innerHTML=localStorage.getItem('name');

document.getElementById('numberdocument').innerHTML=localStorage.getItem('numberdocument');
document.getElementById('nacionalidad').innerHTML=localStorage.getItem('nacionalidad');
document.getElementById('pais_origen').innerHTML=localStorage.getItem('pais_origen');

document.getElementById('date_nac').innerHTML=localStorage.getItem('date_nac');
document.getElementById('direccion-correspondencia').innerHTML=localStorage.getItem('direccion_correspondencia');

document.getElementById('pais_nac').innerHTML=localStorage.getItem('pais_nac');
document.getElementById('depto_nac').innerHTML=localStorage.getItem('depto_nac');
document.getElementById('muni_nac').innerHTML=localStorage.getItem('muni_nac');

document.getElementById('pais_corresp').innerHTML=localStorage.getItem('pais_corresp');
document.getElementById('depto_corresp').innerHTML=localStorage.getItem('depto_corresp');
document.getElementById('municipio_corresp').innerHTML=localStorage.getItem('municipio_corresp');

document.getElementById('tel').innerHTML=localStorage.getItem('tel');
document.getElementById('correo').innerHTML=localStorage.getItem('correo');

//Información Académica
document.getElementById('instituto1').innerHTML=localStorage.getItem('instituto1');
document.getElementById('titulo1').innerHTML=localStorage.getItem('titulo1');
document.getElementById('fechInicio1').innerHTML=localStorage.getItem('fechInicio1');
document.getElementById('estado1').innerHTML=localStorage.getItem('estado1');

document.getElementById('instituto2').innerHTML=localStorage.getItem('instituto2');
document.getElementById('titulo2').innerHTML=localStorage.getItem('titulo2');
document.getElementById('fechInicio2').innerHTML=localStorage.getItem('fechInicio2');
document.getElementById('estado2').innerHTML=localStorage.getItem('estado2');

document.getElementById('instituto3').innerHTML=localStorage.getItem('instituto3');
document.getElementById('titulo3').innerHTML=localStorage.getItem('titulo3');
document.getElementById('fechInicio3').innerHTML=localStorage.getItem('fechInicio3');
document.getElementById('estado3').innerHTML=localStorage.getItem('estado3');

//Experiencia laboral
document.getElementById('Empresa1').innerHTML=localStorage.getItem('Empresa1');
document.getElementById('tiempo_labor1').innerHTML=localStorage.getItem('tiempo_labor1');
document.getElementById('cargo1').innerHTML=localStorage.getItem('cargo1')

document.getElementById('Empresa3').innerHTML=localStorage.getItem('Empresa3');
document.getElementById('tiempo_labor3').innerHTML=localStorage.getItem('tiempo_labor3');
document.getElementById('cargo3').innerHTML=localStorage.getItem('cargo3')

document.getElementById('Empresa2').innerHTML=localStorage.getItem('Empresa2');
document.getElementById('tiempo_labor2').innerHTML=localStorage.getItem('tiempo_labor2');
document.getElementById('cargo2').innerHTML=localStorage.getItem('cargo2')