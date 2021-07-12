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
public class open_alter_screen extends HttpServlet {

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
            throws ServletException, IOException
    {
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
            
            
            try{
          String idtoalter=request.getParameter("id");
String url=JVC_JSP_Common.geturl(request.getRequestURI());
            String username=JVC_JSP_Common.getusername(request.getRequestURI());
            String password=JVC_JSP_Common.getpassword(request.getRequestURI());
ArrayList id =new ArrayList();
ArrayList lead_date =new ArrayList();
ArrayList lead_name =new ArrayList();
ArrayList lead_source =new ArrayList();
ArrayList lead_status =new ArrayList();
ArrayList land_line =new ArrayList();
ArrayList mobile_no =new ArrayList();
ArrayList email =new ArrayList();
ArrayList date_of_birth =new ArrayList();
ArrayList area =new ArrayList();
ArrayList intrest_type =new ArrayList();
ArrayList effort_date =new ArrayList();
ArrayList lead_owner =new ArrayList();
ArrayList time =new ArrayList();
ArrayList tally_serial_number =new ArrayList();
ArrayList[] arr={id,lead_date,lead_name,lead_source,lead_status,land_line,mobile_no,email,date_of_birth,area,intrest_type,effort_date,lead_owner,time,tally_serial_number};
String[] dbcolname={"id","lead_date","lead_name","lead_source","lead_status","land_line","mobile_no","email","date_of_birth","area","intrest_type","effort_date","lead_owner","time","tally_serial_number"};
String query="select * from lead_entry where id='"+idtoalter+"' ";
JVC_JSP_Common.setlistfromdb(arr, dbcolname, query, url, username, password);
request.setAttribute("id",id);
request.setAttribute("lead_date",lead_date);
request.setAttribute("lead_name",lead_name);
request.setAttribute("lead_source",lead_source);
request.setAttribute("lead_status",lead_status);
request.setAttribute("land_line",land_line);
request.setAttribute("mobile_no",mobile_no);
request.setAttribute("email",email);
request.setAttribute("date_of_birth",date_of_birth);
request.setAttribute("area",area);
request.setAttribute("intrest_type",intrest_type);
request.setAttribute("effort_date",effort_date);
request.setAttribute("lead_owner",lead_owner);
request.setAttribute("time",time);
request.setAttribute("tally_serial_number",tally_serial_number);
          request.getRequestDispatcher("Complaint1.jsp").forward(request, response);
            }
            catch(Exception e)
            {
                out.print(e);
            }

//out.print(lead_date);
/*out.print(lead_name);

out.print(lead_source);

out.print(lead_status);

out.print(land_line);

out.print(mobile_no);
out.print(email);
//out.print(date_of_birth);
out.print(area);
out.print(intrest_type);
//out.print(effort_date);
//out.print(lead_owner);
//out.print(time);
out.print(tally_serial_number);*/

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
