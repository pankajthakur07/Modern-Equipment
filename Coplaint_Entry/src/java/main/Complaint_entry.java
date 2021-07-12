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
public class Complaint_entry extends HttpServlet {

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
              String id=request.getParameter("id");
             String url=JVC_JSP_Common.geturl(request.getRequestURI());
            String username=JVC_JSP_Common.getusername(request.getRequestURI());
            String password=JVC_JSP_Common.getpassword(request.getRequestURI());
ArrayList id1 =new ArrayList();
//ArrayList id =new ArrayList();
ArrayList lead_att =new ArrayList();
ArrayList lead_date =new ArrayList();
ArrayList lead_notes =new ArrayList();
ArrayList lead_status =new ArrayList();
ArrayList ref_id =new ArrayList();
ArrayList follow_up_date =new ArrayList();
ArrayList time =new ArrayList();
ArrayList entrytim =new ArrayList();
//ArrayList username =new ArrayList();
ArrayList wa_status =new ArrayList();
ArrayList Replace_part =new ArrayList();
ArrayList Work_done =new ArrayList();
ArrayList Run_Load_HRS =new ArrayList();
ArrayList CABE =new ArrayList();
ArrayList rlh2 =new ArrayList();
String type="";

ArrayList[] arr={id1,lead_att,lead_date,lead_notes,lead_status,ref_id,follow_up_date,time,entrytim,wa_status,Replace_part,Work_done,Run_Load_HRS,CABE,rlh2};
String[] dbcolname={"id1","lead_att","lead_date","lead_notes","lead_status","ref_id","follow_up_date","time","entrytim","wa_status","Replace_part","Work_done","Run_Load_HRS","CABE","rlh2"};
String query="select * from lead_effort ";
JVC_JSP_Common.setlistfromdb(arr, dbcolname, query, url, username, password);




for(int a=0;a<id1.size();a++){
    query="select * from login where user_name='"+userName+"'";
        type=JVC_JSP_Common.setvarnamefromdb("", url, username, password, "type", query);
}
request.setAttribute("id1",id1);
request.setAttribute("id",id);
request.setAttribute("lead_att",lead_att);
request.setAttribute("lead_date",lead_date);
request.setAttribute("lead_notes",lead_notes);
request.setAttribute("lead_status",lead_status);
request.setAttribute("ref_id",ref_id);
request.setAttribute("follow_up_date",follow_up_date);
request.setAttribute("time",time);
request.setAttribute("entrytim",entrytim);
//request.setAttribute("username",username);
request.setAttribute("wa_status",wa_status);
request.setAttribute("Replace_part",Replace_part);
request.setAttribute("Work_done",Work_done);
request.setAttribute("Run_Load_HRS",Run_Load_HRS);
request.setAttribute("CABE",CABE);
request.setAttribute("rlh2",rlh2);
request.setAttribute("type",type);
request.setAttribute("curr_username",userName);

String isremarkstohide="";
if(type.equalsIgnoreCase("Engineer")){
    isremarkstohide="hidden";
}
request.setAttribute("isremarkstohide",isremarkstohide);

          
// request.setAttribute("id",id);
/*out.print(id);
out.print(lead_att);
out.print(lead_date);
out.print(lead_notes);
out.print(lead_status);
out.print(ref_id);
out.print(follow_up_date);
out.print(time);
out.print(entrytim);
out.print(wa_status);*/
        
           request.getRequestDispatcher("Complaint_entry.jsp").forward(request, response);        
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
