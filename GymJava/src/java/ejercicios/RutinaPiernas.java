package ejercicios;
import logica.Rutina;


public class RutinaPiernas extends Rutina
{
    String[] Piernas = {"Elevación de talones sentado con barra","Elevación de talones de pie, en máquina","Gemelos en máquina de musculación","Curl de piernas alterno en máquina"};
    String[] Gluteos = {"Zancadas","Abductores sentado, en máquina de musculación","Elevación de la pelvis en el suelo","Extensión de la cadera en el suelo"};
    
    @Override
    public void generarRutina() {
        System.out.print("Debe hacer 50 lagartijas \n");
    }
    public int CrearAleatorioPeso(){
        int Aleatorio;
        //Peso aleatorio entre 5 y 20 kg
        Aleatorio = (int) Math.floor(Math.random()*(5-(20+1))+(20));
        return Aleatorio;
    }
    public String[] RutinaDias(String TipoRutina){
        String[] lista={Piernas[CrearAleatorioPeso()],Gluteos[CrearAleatorioPeso()]};
        System.out.print("Rutina de ejercicios:");
        System.out.print("Piernas:"+ lista[0]);
        System.out.print("Espalda:"+ lista[1]);
        return lista;
    }
}
