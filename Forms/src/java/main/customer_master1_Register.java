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





public class customer_master1_Register extends HttpServlet {

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

            String url=JVC_JSP_Common.geturl(request.getRequestURI());
            String username=JVC_JSP_Common.getusername(request.getRequestURI());
            String password=JVC_JSP_Common.getpassword(request.getRequestURI());
ArrayList id =new ArrayList();
ArrayList customer =new ArrayList();
ArrayList customer_name =new ArrayList();
ArrayList model =new ArrayList();
ArrayList part_no =new ArrayList();
ArrayList sr_no =new ArrayList();
ArrayList ref_no =new ArrayList();
ArrayList doc =new ArrayList();
ArrayList address =new ArrayList();
ArrayList contact_person =new ArrayList();
ArrayList contact_no =new ArrayList();
ArrayList designation =new ArrayList();
ArrayList Equpment =new ArrayList();
ArrayList Machine_Type =new ArrayList();
ArrayList Status =new ArrayList();
ArrayList Type_of_visit =new ArrayList();
ArrayList Sold_by =new ArrayList();
ArrayList Responsible_Engineer =new ArrayList();
ArrayList[] arr={id,customer,customer_name,model,part_no,sr_no,ref_no,doc,address,contact_person,contact_no,designation,Equpment,Machine_Type,Status,Type_of_visit,Sold_by,Responsible_Engineer};
String[] dbcolname={"id","customer","customer_name","model","part_no","sr_no","ref_no","doc","address","contact_person","contact_no","designation","Equpment","Machine_Type","Status","Type_of_visit","Sold_by","Responsible_Engineer"};
String query="select * from customer_master";
JVC_JSP_Common.setlistfromdb(arr, dbcolname, query, url, username, password);
request.setAttribute("id",id);
request.setAttribute("customer",customer);
request.setAttribute("customer_name",customer_name);
request.setAttribute("model",model);
request.setAttribute("part_no",part_no);
request.setAttribute("sr_no",sr_no);
request.setAttribute("ref_no",ref_no);
request.setAttribute("doc",doc);
request.setAttribute("address",address);
request.setAttribute("contact_person",contact_person);
request.setAttribute("contact_no",contact_no);
request.setAttribute("designation",designation);
request.setAttribute("Equpment",Equpment);
request.setAttribute("Machine_Type",Machine_Type);
request.setAttribute("Status",Status);
request.setAttribute("Type_of_visit",Type_of_visit);
request.setAttribute("Sold_by",Sold_by);
request.setAttribute("Responsible_Engineer",Responsible_Engineer);
            request.getRequestDispatcher("customer_master1_Register.jsp").forward(request, response);        }
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