/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import usuario.Usuario;
import ejercicios.RutinaBrazos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Rutina;
import logica.RutinaDia;

/**
 *
 * @author rapterpakfa
 */
@WebServlet(name = "Registro", urlPatterns = {"/Registro"})
public class Registro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            Usuario contact = new Usuario();
            RutinaDia rutinadia = new RutinaDia();
            
            contact.setNombre(request.getParameter("name1"));
            contact.setCorreo(request.getParameter("email1"));
            contact.setPassword(request.getParameter("pass1"));
            contact.setCelular(request.getParameter("celphone"));
            contact.setEdad(Integer.parseInt(request.getParameter("edad")));
            contact.setPeso(Integer.parseInt(request.getParameter("peso")));
            contact.setAltura(Integer.parseInt(request.getParameter("estatura")));
            contact.setHistorial(request.getParameter("historial"));
            contact.setTipoRutinal(request.getParameter("Objetivo"));
           
            
            request.setAttribute("registro", contact);
            request.setAttribute("rutina", rutinadia);
            request.getRequestDispatcher("respuesta.jsp").forward(request, response);
                                        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
