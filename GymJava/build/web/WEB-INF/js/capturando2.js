function getVarsUrl(){
    var patron ='+';
    var espacio= " ";
    var url= location.search.replace("?","");
    var url2="";
    for (var i = 0; i < url.length; i++) {
        if (url.charAt(i)=='+') {
            url2+=' ';
        } 
        else {
            url2+= url.charAt(i);
        }
    } 
    var arrUrl = url2.split("&");
    var urlObj={};    
    for(var i=0; i<arrUrl.length; i++){
	var x= arrUrl[i].split("=");	
	urlObj[x[0]]=x[1]
    }
    return urlObj;
}
var misVariablesGet = getVarsUrl();

var apellido1= document.getElementById('lastname1');
apellido1.innerHTML= misVariablesGet.lastname1+ " ";
var apellido2= document.getElementById('lastname2');
apellido2.innerHTML=misVariablesGet.lastname2+ " ";
var nombre=document.getElementById('name');
nombre.innerHTML=misVariablesGet.name+ " ";

document.getElementById('document').innerHTML=misVariablesGet.document;
document.getElementById('numberdocument').innerHTML=misVariablesGet.numberdocument;
document.getElementById('nacionalidad').innerHTML=misVariablesGet.nacionalidad;
document.getElementById('pais_origen').innerHTML=misVariablesGet.pais_origen;

document.getElementById('date_nac').innerHTML=misVariablesGet.date_nac;
document.getElementById('direccion-correspondencia').innerHTML=misVariablesGet.direccioncorrespondencia;
document.getElementById('pais_nac').innerHTML=misVariablesGet.pais_nac;
document.getElementById('depto_nac').innerHTML=misVariablesGet.depto_nac;
document.getElementById('muni_nac').innerHTML=misVariablesGet.muni_nac;

document.getElementById('pais_corresp').innerHTML=misVariablesGet.pais_corresp;
document.getElementById('depto_corresp').innerHTML=misVariablesGet.depto_corresp;
document.getElementById('municipio_corresp').innerHTML=misVariablesGet.municipio_corresp;

document.getElementById('tel').innerHTML=misVariablesGet.tel;
document.getElementById('correo').innerHTML=misVariablesGet.correo;

//Información Académica
document.getElementById('instituto1').innerHTML=misVariablesGet.instituto1;
document.getElementById('titulo1').innerHTML=misVariablesGet.titulo1;
document.getElementById('fechInicio1').innerHTML=misVariablesGet.fechInicio1;
document.getElementById('estado1').innerHTML=misVariablesGet.estado1;

document.getElementById('instituto2').innerHTML=misVariablesGet.instituto2;
document.getElementById('titulo2').innerHTML=misVariablesGet.titulo2;
document.getElementById('fechInicio2').innerHTML=misVariablesGet.fechInicio2;
document.getElementById('estado2').innerHTML=misVariablesGet.estado2;

document.getElementById('instituto3').innerHTML=misVariablesGet.instituto3;
document.getElementById('titulo3').innerHTML=misVariablesGet.titulo3;
document.getElementById('fechInicio3').innerHTML=misVariablesGet.fechInicio3;
document.getElementById('estado3').innerHTML=misVariablesGet.estado3;

//Experiencia laboral
document.getElementById('Empresa1').innerHTML=misVariablesGet.Empresa1;
document.getElementById('tiempo_labor1').innerHTML=misVariablesGet.tiempo_labor1;
document.getElementById('cargo1').innerHTML=misVariablesGet.cargo1;

document.getElementById('Empresa3').innerHTML=misVariablesGet.Empresa3;
document.getElementById('tiempo_labor3').innerHTML=misVariablesGet.tiempo_labor3;
document.getElementById('cargo3').innerHTML=misVariablesGet.cargo3;

document.getElementById('Empresa2').innerHTML=misVariablesGet.Empresa2;
document.getElementById('tiempo_labor2').innerHTML=misVariablesGet.tiempo_labor2;
document.getElementById('cargo2').innerHTML=misVariablesGet.cargo2;

