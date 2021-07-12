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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jvc_source_common.JVC_JSP_Common;

/**
 *
 * @author developer1
 */
public class Report extends HttpServlet {

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
            String url=JVC_JSP_Common.geturl(request.getRequestURI());
            String username=JVC_JSP_Common.getusername(request.getRequestURI());
            String password=JVC_JSP_Common.getpassword(request.getRequestURI());
//String mydiv = request.getParameter("search");customer_master
//request.setAttribute("mydiv", mydiv);
//out.print(mydiv);
//  String Machine_type;
//            String lead_name;
//            try{
//                Machine_type=request.getParameter("Machine_type");
//                
//                        if(Machine_type.equalsIgnoreCase("null")){
//                            Machine_type="";
//                        }
//            }catch(Exception ex){
//                Machine_type="";
//            }
//            Machine_type=Machine_type.trim();
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////    
//                        try{
//                lead_name=request.getParameter("lead_name");
//                
//                        if(lead_name.equalsIgnoreCase("null")){
//                            lead_name="";
//                        }
//            }catch(Exception ex){
//                lead_name="";
//            }
//                         lead_name=lead_name.trim();
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// email,date_of_birth,area,intrest_type,
ArrayList Name =new ArrayList();
ArrayList lead_status =new ArrayList();
ArrayList lead_source =new ArrayList();
ArrayList tally_serial_number =new ArrayList();
ArrayList mobile_no =new ArrayList();
ArrayList email =new ArrayList();
ArrayList area =new ArrayList();
ArrayList intrest_type =new ArrayList();
ArrayList lead_owner =new ArrayList();
            ArrayList[] arr9={Name,lead_status,tally_serial_number,lead_source,mobile_no,email,area,intrest_type,lead_owner};
String[] dbcolname9={"lead_name","lead_status","tally_serial_number","lead_source","mobile_no","intrest_type","area","email","lead_owner"};
String query9="select * from lead_entry";
JVC_JSP_Common.setlistfromdb(arr9, dbcolname9, query9, url, username, password);
request.setAttribute("lead_name",Name);
request.setAttribute("area",area);
request.setAttribute("intrest_type",intrest_type);
request.setAttribute("email",email);
request.setAttribute("mobile_no",mobile_no);
request.setAttribute("tally_serial_number",tally_serial_number);
request.setAttribute("lead_status",lead_status);
request.setAttribute("lead_source",lead_source);
request.setAttribute("lead_owner",lead_owner);
/////////////////////////////////////////////////////////////////////////////////////////////////////Replace_part
ArrayList Replace_part=new ArrayList();
ArrayList Run_Load_HRS=new ArrayList();
  ArrayList[] arr1={Replace_part,Run_Load_HRS};
String[] dbcolname1={"Replace_part","Run_Load_HRS"};
String  query1="select * from lead_effort";
JVC_JSP_Common.setlistfromdb(arr1, dbcolname1, query1, url, username, password);
      request.setAttribute("Replace_part",Replace_part);
      request.setAttribute("Run_Load_HRS",Run_Load_HRS);
        ////////////////////////////////////////////////////////////////////////////
ArrayList Machine_Type =new ArrayList();
            ArrayList[] arr={Machine_Type};
String[] dbcolname={"Machine_Type"};
String query="select * from customer_master";
JVC_JSP_Common.setlistfromdb(arr, dbcolname, query, url, username, password);
request.setAttribute("Machine_Type",Machine_Type);
//////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////////////////////////////Run_Load_HRSReplace_part
request.getRequestDispatcher("search_name.jsp").forward(request, response); 

            
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
