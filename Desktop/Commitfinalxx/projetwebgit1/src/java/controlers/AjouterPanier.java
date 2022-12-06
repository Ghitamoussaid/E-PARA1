/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import entities.Categorie;
import entities.Client;
import entities.Marque;
import entities.Panier;
import entities.Produit;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import services.ClientService;
import services.PanierService;
import services.ProduitService;

/**
 *
 * @author hp
 */
@WebServlet(name = "AjouterPanier", urlPatterns = {"/AjouterPanier"})
public class AjouterPanier extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AjouterPanier</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AjouterPanier at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        int id = Integer.parseInt(request.getParameter("id"));
        int user = Integer.parseInt(request.getParameter("user"));
        ProduitService p = new ProduitService();
        PanierService ps = new PanierService();
        ClientService cs =new ClientService();
        Produit prod = p.findById(id);
        Client c = cs.findById(user);
        

        if (prod != null) {
            int etat = 0;
            
            if (ps.findAll() != null) {
                
                for (Panier p1 : ps.findAll()) {
                    if (p1.getProduit().getId() == id && p1.getClient().getId() == user ) {
                        p1.setQte(p1.getQte()+1);
                        ps.update(p1);
                        etat = 1;
                    }
                }
            }
            if (etat == 0) {
              Panier pp = new Panier(prod,1,c);
              ps.create(pp);
            }

        }

        response.sendRedirect("Client.jsp");
        
        
        
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
