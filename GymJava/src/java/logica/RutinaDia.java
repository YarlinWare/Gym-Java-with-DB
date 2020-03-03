/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package logica;
import ejercicios.Ejercicios;
/**
 *
 * @author rapterpakfa
 */
public class RutinaDia extends Ejercicios{
    private String TipoRutina;
    private String Ejercicio1;
    private String Ejercicio2;
    private String Ejercicio3;
    private String Ejercicio4;
    private String Ejercicio5;
    private String Ejercicio6;
    private String Ejercicio7;
    private String Ejercicio8;
    private String Ejercicio9;
    String[] Calentamiento={"Inclinacion del tronco","Rotacion de caderas","Rotacion de brazos","Rotacion de muñecas"};
    String[] Biceps = {"Flexion con barra", "Flexion con polea", "Flexion tipo martillo", "Flexion con apoyo en muslo"};
    String[] Triceps = {"Press Frances en banco plano", "Extension con mancuerna", "Extension de los brazos sentado y con barra", "Extension de triceps en polea alta"};
    String[] Pecho = {"Pull-over con mancuerna", "Aperturas en máquina contractora de pecho", "Apertura con mancuernas en banco inclinado", "Dips en paralelas"};
    String[] Abdominales = {"twist abdominal","Rotación del tronco con bastón","Elevación de piernas en plancha inclinada","Flexión lateral del tronco con mancuerna"};
    String[] Piernas = {"Elevación de talones sentado con barra","Elevación de talones de pie, en máquina","Gemelos en máquina de musculación","Curl de piernas alterno en máquina"};
    String[] Gluteos = {"Zancadas","Abductores sentado, en máquina de musculación","Elevación de la pelvis en el suelo","Extensión de la cadera en el suelo"};
    String[] Espalda = {"Tracción o dominadas en barra fija","Encogimiento de hombros en máquina","Encogimientos de hombros con barra","Remo al cuello con manos juntas"};
    String[] Hombros = {"Press sentado con mancuernas","Encogimiento de hombros en máquina","Remo al cuello con manos juntas","Rowing vertical con manos separadas"};

    
    
    public int CrearAleatorio(){
        int Aleatorio;
        //Rutinas entre 1 a 4 repeticiones
        Aleatorio = (int) (Math.random() * 4);
        return Aleatorio;
    }
    
    public int CrearAleatorioPeso(){
        int Aleatorio;
        //Peso aleatorio entre 5 y 20 kg
        Aleatorio = (int) Math.floor(Math.random()*(5-(20+1))+(20));
        return Aleatorio;
    }
    public String[] RutinaDias(String TipoRutina){
        switch (TipoRutina){            
            case "AumentarMasa":
                Ejercicio1= Calentamiento[CrearAleatorio()];
                Ejercicio2=Biceps[CrearAleatorio()];
                Ejercicio3=Triceps[CrearAleatorio()];
                Ejercicio4=Pecho[CrearAleatorio()];
                Ejercicio5=Abdominales[CrearAleatorio()];
                Ejercicio6=Piernas[CrearAleatorio()];
                Ejercicio7=Gluteos[CrearAleatorio()];
                Ejercicio8=Espalda[CrearAleatorio()];
                Ejercicio9=Hombros[CrearAleatorio()];
                                
                break;
            case "PerderPeso":
                Ejercicio1=Calentamiento[CrearAleatorio()];
                Ejercicio2=Biceps[CrearAleatorio()];
                Ejercicio3=Triceps[CrearAleatorio()];
                Ejercicio4=Pecho[CrearAleatorio()];
                Ejercicio5=Abdominales[CrearAleatorio()];
                Ejercicio6=Piernas[CrearAleatorio()];
                Ejercicio7=Gluteos[CrearAleatorio()];
                Ejercicio8=Espalda[CrearAleatorio()];
                Ejercicio9=Hombros[CrearAleatorio()];
                break;
             case "ResistenciaFisica":
                Ejercicio1=Calentamiento[CrearAleatorio()];
                Ejercicio2=Biceps[CrearAleatorio()];
                Ejercicio3=Triceps[CrearAleatorio()];
                Ejercicio4=Pecho[CrearAleatorio()];
                Ejercicio5=Abdominales[CrearAleatorio()];
                Ejercicio6=Piernas[CrearAleatorio()];
                Ejercicio7=Gluteos[CrearAleatorio()];
                Ejercicio8=Espalda[CrearAleatorio()];
                Ejercicio9=Hombros[CrearAleatorio()];
                break;
        }
        
        String[] lista={Ejercicio1,Ejercicio2,Ejercicio3};
        return lista;
    }
}
