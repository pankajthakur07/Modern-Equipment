/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class cuma extends HttpServlet {

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
                 String userName = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("lms_user")) userName = cookie.getValue();
}
}
if(userName == null||userName.isEmpty()) response.sendRedirect("index.jsp");
           String url=JVC_JSP_Common.geturl(request.getRequestURI());
            String username=JVC_JSP_Common.getusername(request.getRequestURI());
            String password=JVC_JSP_Common.getpassword(request.getRequestURI());
            ArrayList Name =new ArrayList();
           
            ArrayList[] arr={Name};
String[] dbcolname={"name1"};
String query="select * from Responsible_Engineer";
JVC_JSP_Common.setlistfromdb(arr, dbcolname, query, url, username, password);
request.setAttribute("name1",Name);

ArrayList id =new ArrayList();
ArrayList name2 =new ArrayList();
ArrayList[] arr1={id,name2};
String[] dbcolname1={"id","name2"};
String query1="select * from Sold_by ";
JVC_JSP_Common.setlistfromdb(arr1, dbcolname1, query1, url, username, password);
request.setAttribute("id",id);
request.setAttribute("name2",name2);
//String url=JVC_JSP_Common.geturl(request.getRequestURI());
  //          String username=JVC_JSP_Common.getusername(request.getRequestURI());
    //        String password=JVC_JSP_Common.getpassword(request.getRequestURI());
ArrayList id2 =new ArrayList();
ArrayList name3 =new ArrayList();
ArrayList[] arr2={id2,name3};
String[] dbcolname2={"id","name3"};
String query2="select * from Type_of_visit ";
JVC_JSP_Common.setlistfromdb(arr2, dbcolname2, query2, url, username, password);
request.setAttribute("id",id2);
request.setAttribute("name3",name3);
//status /////////////////////////////////
ArrayList id3 =new ArrayList();
ArrayList name4 =new ArrayList();
ArrayList[] arr3={id3,name4};
String[] dbcolname3={"id","name4"};
String query3="select * from Status ";
JVC_JSP_Common.setlistfromdb(arr3, dbcolname3, query3, url, username, password);
request.setAttribute("id",id3);
request.setAttribute("name4",name4);
////////////machine_type1//////////
ArrayList id4 =new ArrayList();
ArrayList name5 =new ArrayList();
ArrayList[] arr4={id,name5};
String[] dbcolname4={"id","name5"};
String query4="select * from Machine_type ";
JVC_JSP_Common.setlistfromdb(arr4, dbcolname4, query4, url, username, password);
request.setAttribute("id",id4);
request.setAttribute("name5",name5);
////////////////////////////////////Equpment_master/////////////////////////////////
ArrayList id5 =new ArrayList();
ArrayList name6 =new ArrayList();
ArrayList[] arr5={id,name6};
String[] dbcolname5={"id","name6"};
String query5="select * from Equipment_master";
JVC_JSP_Common.setlistfromdb(arr5, dbcolname5, query5, url, username, password);
request.setAttribute("id",id5);
request.setAttribute("name6",name6);;
                           request.getRequestDispatcher("customer_master.jsp").forward(request, response);
     
               // request.getRequestDispatcher("Company_master.jsp").forward(request, response);    
 

            
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
