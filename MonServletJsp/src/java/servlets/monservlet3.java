
package servlets;

import java.io.IOException;
/**import java.io.PrintWriter;*/
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class monservlet3 extends HttpServlet {
     

    /** protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       
        request.getRequestDispatcher("/Login.jsp").forward(request, response);
    }*/

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
       // request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
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
        
        String pseudo = request.getParameter("pseudo");
        String password = request.getParameter("password");
        
        if(pseudo==null){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }
        else{
            request.setAttribute("nom", pseudo);
         
         request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
        }
         //request.setAttribute("nom", pseudo);
         //request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
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
