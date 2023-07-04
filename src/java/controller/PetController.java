package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Pet;
import model.PetDAO;

@WebServlet(name = "PetController", urlPatterns = {"/PetController"})
public class PetController extends HttpServlet {
    private int id;
    private String animal;
    private String raca;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        //Verificar se o código está sendo enviado
        if(request.getParameter("id") != null) {
            this.id = Integer.parseInt(request.getParameter("id"));
        }
        
        //Recebendo dados do formulário de cadastro
        this.animal = request.getParameter("animal");
        this.raca = request.getParameter("raca");
        
        try {
            PetDAO transpDAO = new PetDAO();
            
            if(request.getParameter("id") == null) {
                Pet tr = new Pet(
                        this.animal, 
                        this.raca
               );

                transpDAO.insertPet(tr);
                
            } else {
                Pet tr = new Pet(
                        this.id,
                        this.animal, 
                        this.raca
                );

                transpDAO.updatePet(tr);
                
            }
            response.sendRedirect("lista.jsp");
            
        } catch(SQLException | ClassNotFoundException erro) {
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample ide. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Transportes</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Ocorreu algum erro :(</h1>");
            out.println("</body>");
            out.println("</html>");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the ide.">
    /**
     * Handles the HTTP <ide>GET</ide> method.
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
     * Handles the HTTP <ide>POST</ide> method.
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
