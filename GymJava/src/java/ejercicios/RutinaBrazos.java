package ejercicios;
import logica.Rutina;

public class RutinaBrazos extends Rutina {
    String[] Hombros = {"Press sentado con mancuernas","Encogimiento de hombros en máquina","Remo al cuello con manos juntas","Rowing vertical con manos separadas"};
    String[] Biceps = {"Flexion con barra", "Flexion con polea", "Flexion tipo martillo", "Flexion con apoyo en muslo"};
    int Ejercicio1;
    int Ejercicio2;
    /**
     * Este es un metodo Override, que significa un metodo de sobreescritura, o tambien conocido como polimorfirsmo, si se fija es el mismo
     * metodo de la Clase Rutina pero en este caso, al estar en una clase que no es abstracta tiene la opcion de utilizar el metodo para crear su 
     * rutina de brazos
     */
    @Override
    public void generarRutina() {
        System.out.print("Debe hacer 50 flexiones de pecho\n");
        
    }
    public int CrearAleatorioPeso(){
        int Aleatorio;
        //Peso aleatorio entre 5 y 20 kg
        Aleatorio = (int) Math.floor(Math.random()*(5-(20+1))+(20));
        return Aleatorio;
    }
    public String[] RutinaDias(String TipoRutina){
        String[] lista={Hombros[CrearAleatorioPeso()],Biceps[CrearAleatorioPeso()]};
        System.out.print("Rutina de ejercicios:");
        System.out.print("Hombros:"+ lista[0]);
        System.out.print("Biceps:"+ lista[1]);
        return lista;
    }


    
}
