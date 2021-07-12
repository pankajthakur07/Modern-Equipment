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
public class c extends HttpServlet {

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
            ArrayList id =new ArrayList();

//////////////////////////////////////////////////////////
           //ArrayList Name =new ArrayList();
           
           //ArrayList[] arr={Name};
//String[] dbcolname={"name1"};
//String query="select * from Responsible_Engineer";
//JVC_JSP_Common.setlistfromdb(arr, dbcolname, query, url, username, password);
//request.setAttribute("name1",Name);
ArrayList id1 =new ArrayList();
ArrayList name10 =new ArrayList();
ArrayList[] arr1={id,name10};
String[] dbcolname1={"id","name10"};
String query1="select * from Nature_of_complaint ";
JVC_JSP_Common.setlistfromdb(arr1, dbcolname1, query1, url, username, password);
request.setAttribute("id",id1);
request.setAttribute("name10",name10);

///////////////////////////////////////////
ArrayList id2 =new ArrayList();
ArrayList name2 =new ArrayList();
ArrayList[] arr2={id,name2};
String[] dbcolname2={"id","name2"};
String query2="select * from Category_of_problem ";
JVC_JSP_Common.setlistfromdb(arr2, dbcolname2, query2, url, username, password);
request.setAttribute("id",id2);
request.setAttribute("name2",name2);
//////////////////////////////////
ArrayList id3 =new ArrayList();
ArrayList name3 =new ArrayList();
ArrayList[] arr3={id,name3};
String[] dbcolname3={"id","name3"};
String query3="select * from Electrical ";
JVC_JSP_Common.setlistfromdb(arr3, dbcolname3, query3, url, username, password);
request.setAttribute("id",id3);
request.setAttribute("name3",name3);
////////////////////////////////////////////////////////////////
ArrayList id4 =new ArrayList();
ArrayList name4 =new ArrayList();
ArrayList[] arr4={id,name4};
String[] dbcolname4={"id","name4"};
String query4="select * from Mechanical ";
JVC_JSP_Common.setlistfromdb(arr4, dbcolname4, query4, url, username, password);
request.setAttribute("id",id4);
request.setAttribute("name4",name4);
////////////////////////////////////////////////////
ArrayList id5 =new ArrayList();
ArrayList name5 =new ArrayList();
ArrayList[] arr5={id,name5};
String[] dbcolname5={"id","name5"};
String query5="select * from Refrigeration ";
JVC_JSP_Common.setlistfromdb(arr5, dbcolname5, query5, url, username, password);
request.setAttribute("id",id);
request.setAttribute("name5",name5);
///////////////////////////////////////////////////////////////
/*ArrayList id6 =new ArrayList();
ArrayList name6 =new ArrayList();
ArrayList[] arr6={id,name6};
String[] dbcolname6={"id","name6"};
String query6="select * from Assign ";
JVC_JSP_Common.setlistfromdb(arr6, dbcolname6, query6, url, username, password);
request.setAttribute("id",id6);
request.setAttribute("name6",name6);*/

ArrayList id7 =new ArrayList();
ArrayList customer_name =new ArrayList();
ArrayList model =new ArrayList();
ArrayList sr_no =new ArrayList();
ArrayList Responsible_Engineer =new ArrayList();
ArrayList[] arr7={id,customer_name,model,sr_no,Responsible_Engineer};
String[] dbcolname7={"id","customer_name","model","sr_no","Responsible_Engineer"};
String query7="select * from customer_master ";
JVC_JSP_Common.setlistfromdb(arr7, dbcolname7, query7, url, username, password);
request.setAttribute("id",id7);
request.setAttribute("customer_name",customer_name);
request.setAttribute("model",model);
request.setAttribute("sr_no",sr_no);
request.setAttribute("Responsible_Engineer",Responsible_Engineer);


    ArrayList Name =new ArrayList();
           
            ArrayList[] arr9={Name};
String[] dbcolname9={"name1"};
String query9="select * from Responsible_Engineer";
JVC_JSP_Common.setlistfromdb(arr9, dbcolname9, query9, url, username, password);
request.setAttribute("name1",Name);
//out.print(Customer_name);
ArrayList Customer_name =new ArrayList();
ArrayList Model_number=new ArrayList();
ArrayList[] arr10={Customer_name,Model_number};
String[] dbcolname10={"Customer_name","Model_number"};
String query10="select * from Complaint";
JVC_JSP_Common.setlistfromdb(arr10, dbcolname10, query10, url, username, password);
request.setAttribute("Customer_name",Customer_name);
request.setAttribute("Model_number",Model_number);
//out.print(Customer_name);
//out.print(Model_number);









          request.getRequestDispatcher("Complaint1.jsp").forward(request, response);
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
