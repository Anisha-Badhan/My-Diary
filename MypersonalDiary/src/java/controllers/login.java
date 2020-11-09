/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Models.users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class login extends HttpServlet {

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
           PrintWriter pw=response.getWriter();
        
        String[] login_info={request.getParameter("email"),request.getParameter("pwsd")};
        
        users user=new users();
        
        String result[]=user.login_user(login_info);
        if(result[1]==null){
            request.setAttribute("Error", "Login Failled!");
            
            RequestDispatcher dispatcher=request.getRequestDispatcher("Login.jsp");
            dispatcher.forward(request, response);
        }else{
            
                   
            Cookie user_name=new Cookie("user_name", result[1]);
            response.addCookie(user_name); 
            
            Cookie user_id=new Cookie("user_id", result[0]);
            response.addCookie(user_id); 
            
            Cookie user_email=new Cookie("user_email", result[2]);
            response.addCookie(user_email); 
            
             RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
             dispatcher.forward(request, response);
            //pw.println(user_name.getName()+user_name.getValue());


            
            request.setAttribute("user_name",user_name);
            }
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
