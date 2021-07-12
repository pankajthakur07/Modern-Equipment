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
public class Register extends HttpServlet {

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


String interest_type1=request.getParameter("interest_type");
 
            String url=JVC_JSP_Common.geturl(request.getRequestURI());
            String username=JVC_JSP_Common.getusername(request.getRequestURI());
            String password=JVC_JSP_Common.getpassword(request.getRequestURI());
            String status;
            String entrydate;
            String  entrydate2;
            String interest_type;
            String search;
            try{
                status=request.getParameter("status");
                
                        if(status.equalsIgnoreCase("null")){
                            status="";
                        }
            }catch(Exception ex){
                status="";
            }
            status=status.trim();
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////    
                        try{
                entrydate=request.getParameter("entrydate");
                
                        if(entrydate.equalsIgnoreCase("null")){
                            entrydate="";
                        }
            }catch(Exception ex){
                entrydate="";
            }
                         entrydate=entrydate.trim();
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////              
                        try{
                entrydate2=request.getParameter("entrydate2");
                
                        if(entrydate2.equalsIgnoreCase("null")){
                            entrydate2="";
                        }
            }catch(Exception ex){
                entrydate2="";
            }
                         entrydate2=entrydate2.trim();
 ////////////////////////////////////////////////////////////////////////////////////////////////////    
                        try{
                interest_type=request.getParameter("interest_type");
                
                        if(interest_type.equalsIgnoreCase("null")){
                            interest_type= "";
                        }
            }catch(Exception ex){
                interest_type="";
            }
                        interest_type=interest_type.trim();
                        
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
         
                                 try{
                search=request.getParameter("search");
                
                        if(search.equalsIgnoreCase("null")){
                            search= "";
                        }
            }catch(Exception ex){
                search="";
            }
                        search=search.trim();
           ////////////////////////////////////////////////////////////////////////////////////////////
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
ArrayList Equepment =new ArrayList();
ArrayList Machine_Type =new ArrayList();
ArrayList Sold_by =new ArrayList();
ArrayList Category_of_problem =new ArrayList();
ArrayList Replace_part =new ArrayList();
ArrayList follow_up_date =new ArrayList();
String type ="";
ArrayList[] arr={id,lead_date,lead_name,lead_source,lead_status,land_line,mobile_no,email,date_of_birth,area,intrest_type,effort_date,lead_owner,time,tally_serial_number,Category_of_problem};
String[] dbcolname={"id","lead_date","lead_name","lead_source","lead_status","land_line","mobile_no","email","date_of_birth","area","intrest_type","effort_date","lead_owner","time","tally_serial_number","Category_of_problem"};
String query="select * from lead_entry ";

//if(status.isEmpty()==false){
//    query="select * from lead_entry where lead_status='"+status+"' ";
//}
//if(interest_type.isEmpty()==false){
//    query="select * from lead_entry where tally_serial_number='"+interest_type+"' ";
//}
if(search.isEmpty()==false){
    query="select * from lead_entry where lead_name='"+search+"' ";
   
}

if(entrydate.isEmpty()==false&&entrydate2.isEmpty()==false&&status.isEmpty()==false&&interest_type.isEmpty()==false){
    query="select * from lead_entry "
            + "INNER JOIN lead_effort ON lead_entry.id=lead_effort.ref_id "
            + "where "
            + "lead_entry.lead_date='"+entrydate+"' and lead_entry.lead_date='"+entrydate2+"' and " 
            + "lead_entry.lead_status='"+status+"' and lead_entry.tally_serial_number='"+interest_type+"' " ;
}

JVC_JSP_Common.setlistfromdb(arr, dbcolname, query, url, username, password);
for(int a=0;a<id.size();a++){
    String val=JVC_JSP_Common.getvaluefromarraylist(lead_name, a);
    query="select * from customer_master where Customer_name='"+val+"'";
    Equepment.add(JVC_JSP_Common.setvarnamefromdb("", url, username, password, "Equpment", query));

}
for(int a=0;a<id.size();a++){
    String val=JVC_JSP_Common.getvaluefromarraylist(lead_name, a);
    query="select * from customer_master where Customer_name='"+val+"'";
        Machine_Type.add(JVC_JSP_Common.setvarnamefromdb("", url, username, password, "Machine_Type", query));

}
for(int a=0;a<id.size();a++){
    String val=JVC_JSP_Common.getvaluefromarraylist(lead_name, a);
    query="select * from customer_master where Customer_name='"+val+"'";
        Sold_by.add(JVC_JSP_Common.setvarnamefromdb("", url, username, password, "Sold_by", query));

}
//for(int a=0;a<id.size();a++){
  //  String val=JVC_JSP_Common.getvaluefromarraylist(lead_name, a);
  //  query="select * from lead_entry where mobile_no='"+val+"'";
     //   .add(JVC_JSP_Common.setvarnamefromdb("", url, username, password, "", query));

//}
for(int a=0;a<id.size();a++){
    String val=JVC_JSP_Common.getvaluefromarraylist(lead_name, a);
    query="select * from lead_effort where lead_notes='"+val+"'";
        Replace_part.add(JVC_JSP_Common.setvarnamefromdb("", url, username, password, "Replace_part", query));

}
for(int a=0;a<id.size();a++){
    String val=JVC_JSP_Common.getvaluefromarraylist(lead_name, a);
    query="select * from lead_effort where lead_notes='"+val+"'";
        follow_up_date.add(JVC_JSP_Common.setvarnamefromdb("", url, username, password, "follow_up_date", query));
}
for(int a=0;a<id.size();a++){
    query="select * from responsible_engineer where User_name='"+userName+"'";
        type=JVC_JSP_Common.setvarnamefromdb("", url, username, password, "type", query);
}

if(type.equalsIgnoreCase("Engineer")){
    for(int a=0;a<id.size();a++){
        String assignstr=JVC_JSP_Common.getvaluefromarraylist(tally_serial_number, a);
        if(assignstr.equalsIgnoreCase(userName)==false){
            id.remove(a);
            lead_date.remove(a);
            lead_name.remove(a);
            lead_source.remove(a);
            lead_status.remove(a);
            land_line.remove(a);
            mobile_no.remove(a);
            email.remove(a);
            date_of_birth.remove(a);
            area.remove(a);
            intrest_type.remove(a);
            effort_date.remove(a);
            lead_owner.remove(a);
            time.remove(a);
            tally_serial_number.remove(a);
            Equepment.remove(a);
            Machine_Type.remove(a);
            Sold_by.remove(a);
            Category_of_problem.remove(a);
            Replace_part.remove(a);
            follow_up_date.remove(a);
            a=-1;
        }
    }
}
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
request.setAttribute("Equepment",Equepment);
request.setAttribute("Machine_Type",Machine_Type);
request.setAttribute("Sold_by",Sold_by);
request.setAttribute("Category_of_problem",Category_of_problem);
request.setAttribute("Replace_part",Replace_part);
request.setAttribute("follow_up_date",follow_up_date);
request.setAttribute("curr_username",userName);
request.setAttribute("type",type);
request.setAttribute("interest_type1",interest_type1);

String isremarkstohide="";
if(type.equalsIgnoreCase("Engineer")){
    isremarkstohide="hidden";
}
request.setAttribute("isremarkstohide",isremarkstohide);
//out.print(userName);
//out.print(type);

/*/out.print(effort_date);
out.print(lead_owner);
//*out.print(time);
//out.print(date_of_birth);
out.print(lead_date);
out.print(lead_name);

out.print(lead_source);

out.print(lead_status);

out.print(land_line);

out.print(mobile_no);
out.print(email);


out.print(intrest_type);

//out.print(tally_serial_number);*/
//out.print(area);
//out.print(query);
//out.print(status );
//out.print(interest_type);
//String interest_type11 = request.getParameter("interest_type");
//
//request.setAttribute("interest_type11", interest_type11);
//out.print(interest_type11);
ArrayList Name =new ArrayList();
            
            ArrayList[] arr9={Name};
String[] dbcolname9={"name1"};
String query9="select * from Responsible_Engineer";
JVC_JSP_Common.setlistfromdb(arr9, dbcolname9, query9, url, username, password);
request.setAttribute("name1",Name);
 request.getRequestDispatcher("newjsp.jsp").forward(request, response);        

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
 