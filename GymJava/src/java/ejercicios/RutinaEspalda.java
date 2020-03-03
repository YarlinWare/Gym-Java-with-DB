package ejercicios;
import logica.Rutina;


public class RutinaEspalda extends Rutina {
    String[] Espalda = {"Tracción o dominadas en barra fija","Encogimiento de hombros en máquina","Encogimientos de hombros con barra","Remo al cuello con manos juntas"};
    
    @Override
    public void generarRutina() {
        System.out.print("Debe hacer 5000 espaldaciones para tener una ESPALDA casi tan sexy como la de negro\n");
    }
     public int CrearAleatorioPeso(){
        int Aleatorio;
        //Peso aleatorio entre 5 y 20 kg
        Aleatorio = (int) Math.floor(Math.random()*(5-(20+1))+(20));
        return Aleatorio;
    }
    public String[] RutinaDias(String TipoRutina){
        String[] lista={Espalda[CrearAleatorioPeso()],Espalda[CrearAleatorioPeso()]};
        System.out.print("Rutina de ejercicios:");
        System.out.print("Espalda:"+ lista[0]);
        System.out.print("Espalda:"+ lista[1]);
        return lista;
    }
}
