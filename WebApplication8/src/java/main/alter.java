package main;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jvc_source_common.JVC_JSP_Common;
import java.util.ArrayList;
import javax.servlet.http.Cookie;





public class alter extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

     String userName = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("lms_user")) userName = cookie.getValue();
}
}
if(userName == null||userName.isEmpty()) response.sendRedirect("index.jsp");

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
            request.getRequestDispatcher("alter.jsp").forward(request, response);        }
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