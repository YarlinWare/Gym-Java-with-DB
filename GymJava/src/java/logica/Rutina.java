/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

/**
 *
 * @author rapterpakfa
 */
public abstract class Rutina {
    int edad;
    int altura;
    int peso;
    
    
    public void CalcularRutina(){   
    
    }
    
    public void CrearAleatorio(){}
    
    public int getEdad() {
        return edad;
    }

    public int getAltura() {
        return altura;
    }

    public int getPeso() {
        return peso;
    }
       
    public abstract void generarRutina();  

    
}
