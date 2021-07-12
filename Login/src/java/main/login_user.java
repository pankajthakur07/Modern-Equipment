/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;  
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jvc_source_common.JVC_JSP_Common;

/**
 *
 * @author Hitech Computer
 */
public class login_user extends HttpServlet {

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
           try{
              // String lead_status=request.getParameter("lead_status");
String workingprojectname=JVC_JSP_Common.getprojectname(request.getRequestURI());
String responce=JVC_JSP_Common.getresponcefromurl("http://"+request.getServerName()+":"+request.getServerPort()+"/Check_Login/Check_Login?Project_Name="+workingprojectname);
 
if(responce.equalsIgnoreCase("Valid License")){
            String frmusername=request.getParameter("User_name");
String frmpassword=request.getParameter("User_password");
String url=JVC_JSP_Common.geturl(request.getRequestURI());
String dbusername=JVC_JSP_Common.getusername(request.getRequestURI());
String dbpassword=JVC_JSP_Common.getpassword(request.getRequestURI());
String query="select count(id) as noofcount from responsible_engineer where User_name=binary '"+frmusername+"' and User_password=binary '"+frmpassword+"'";
int noofcount=JVC_JSP_Common.setvarnamefromdb(0, url, dbusername, dbpassword, "noofcount", query);
if(noofcount==1){
        Cookie loginCookie = new Cookie("lms_user",frmusername);
    loginCookie.setMaxAge(7200);
    loginCookie.setPath("/");
    response.addCookie(loginCookie);
    out.print("<script>window.location.href='/WebApplication8/Register'</script>");
    
}
else{
               request.setAttribute("message", "Invalid user_name & user_password ");
              
    request.getRequestDispatcher("index.jsp").forward(request, response);
       
    }
}else{
    // request.setAttribute("lead_status", lead_status);
               request.setAttribute("message", responce);
    request.getRequestDispatcher("index.jsp").forward(request, response);
}            
   
            }catch(Exception ex){
                out.print(ex);
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
 