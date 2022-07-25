
package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/**import java.io.PrintWriter;*/
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlets.user;


@WebServlet(name = "Monservlet2", urlPatterns = {"/Monservlet2"})
public class Monservlet2 extends HttpServlet {


 /**
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
        HttpSession session=request.getSession();
        List<user> liste=(List)session.getAttribute("liste");
        if(liste==null){
            liste= new ArrayList();
        }
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String pseudo = request.getParameter("pseudo");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rpassword = request.getParameter("rpassword");
       
       /** PrintWriter writer = response.getWriter();
        writer.print("nom = " + nom + " password = " +password);*/
       
       if(password.equals(rpassword)){
           request.setAttribute("nom", nom);
           request.setAttribute("prenom", prenom);
           request.setAttribute("pseudo", pseudo);
           request.setAttribute("email", email);
            
            
            user user = new user(pseudo, nom, prenom, email, password);
            
            request.setAttribute("user", user);
            liste.add(user);
            request.setAttribute("liste", liste);
            
            session.setAttribute("liste", liste);
            request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
       }else{
            request.getRequestDispatcher("/Inscrire.jsp").forward(request, response);

       }
       
        
    }


}
