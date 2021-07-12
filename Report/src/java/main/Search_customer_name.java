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
public class Search_customer_name extends HttpServlet {

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
            try{
            /* TODO output your page here. You may use following sample code. */
                String url=JVC_JSP_Common.geturl(request.getRequestURI());
            String username=JVC_JSP_Common.getusername(request.getRequestURI());
            String password=JVC_JSP_Common.getpassword(request.getRequestURI());
//String mydiv = request.getParameter("search");
//request.setAttribute("mydiv", mydiv);

//out.print(mydiv);
             String search;
             String status;
             String Machine_Type1;
//            String  entrydate2;
             String Assign;
            
            try{
                Machine_Type1=request.getParameter("Machine_Type1");
                
                        if(Machine_Type1.equalsIgnoreCase("null")){
                            Machine_Type1="";
                        }
            }catch(Exception ex){
                Machine_Type1="";
            }
            Machine_Type1=Machine_Type1.trim();
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////    
                        try{
                status=request.getParameter("status");
                
                        if(status.equalsIgnoreCase("null")){
                            status="";
                        }
            }catch(Exception ex){
                status="";
            }
                         status=status.trim();
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////              
                        try{
                Assign=request.getParameter("Assign");
                
                        if(Assign.equalsIgnoreCase("null")){
                            Assign="";
                        }
            }catch(Exception ex){
                Assign="";
            }
                         Assign=Assign.trim();
 ////////////////////////////////////////////////////////////////////////////////////////////////////    
//                        try{
//                interest_type=request.getParameter("interest_type");
//                
//                        if(interest_type.equalsIgnoreCase("null")){
//                            interest_type= "";
//                        }
//            }catch(Exception ex){
//                interest_type="";
//            }
//                        interest_type=interest_type.trim();
//                        
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

ArrayList[] arr={id,lead_date,lead_name,lead_source,lead_status,land_line,mobile_no,email,date_of_birth,area,intrest_type,effort_date,lead_owner,time,tally_serial_number};
String[] dbcolname={"id","lead_date","lead_name","lead_source","lead1_status","land_line","mobile_no","email","date_of_birth","area","intrest_type","effort_date","lead_owner","time","tally_serial_number"};
String query="SELECT * FROM lead_entry";
 //String query="SELECT * FROM lead_entry WHERE lead_name LIKE '%"+mydiv+"%'";
 //String query="SELECT * FROM lead_entry WHERE lead_name='"+mydiv+"'";
// out.print(query);
JVC_JSP_Common.setlistfromdb(arr, dbcolname, query, url, username, password);

if(search.isEmpty()==false&&Machine_Type1.isEmpty()==false&&status.isEmpty()==false&&Assign.isEmpty()==false){
    query="select * from lead_entry "
            + "INNER JOIN customer_master ON lead_entry.id=customer_master.id "
           +" INNER JOIN lead_effort ON lead_entry.id=lead_effort.id "
            + "where "
            + "lead_entry.lead_name='"+search+"' and customer_master.Machine_Type='"+Machine_Type1+"' and " 
            + "lead_entry.lead_status='"+status+"' and lead_entry.tally_serial_number='"+Assign+"' " ;
//    out.print(query);
}else{
    query="select * from lead_entry "
            + "INNER JOIN customer_master ON lead_entry.id=customer_master.id "
           +" INNER JOIN lead_effort ON lead_entry.id=lead_effort.id ";
   
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

request.setAttribute("id",id);
request.setAttribute("lead_date",lead_date);
request.setAttribute("lead_name",lead_name);
request.setAttribute("lead_source",lead_source);
request.setAttribute("lead_status",lead_status);
request.setAttribute("lead_status",land_line);
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

//out.print(id+"<br>");
//out.print(lead_date+"<br>");
//out.print(lead_name+"<br>");
//out.print(lead_source+"<br>");
//out.print(lead_status+"<br>");
//out.print(mobile_no+"<br>");
//out.print(email+"<br>");
////out.print(date_of_birth+"<br>");
//out.print(area+"<br>");
//out.print(intrest_type+"<br>");
////out.print(effort_date+"<br>");
//out.print(lead_owner+"<br>");
//////out.print(time+"<br>");
//out.print(tally_serial_number+"<br>");
//out.print(Equepment+"<br>");
//out.print(Machine_Type+"<br>");
//out.print(Sold_by+"<br>");
////out.print(Category_of_problem+"<br>");
//out.print(Replace_part+"<br>");
//out.print(follow_up_date+"<br>");


ArrayList Name =new ArrayList();
           
            ArrayList[] arr9={Name};
String[] dbcolname9={"name1"};
String query9="select * from Responsible_Engineer";
JVC_JSP_Common.setlistfromdb(arr9, dbcolname9, query9, url, username, password);
request.setAttribute("name1",Name);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//ArrayList lead_att =new ArrayList();
//ArrayList lead_notes =new ArrayList();
//           
//            ArrayList[] arr3={lead_att,lead_notes};
//String[] dbcolname3={"lead_att","lead_notes"};
//String query3="select * from lead_effort";
//JVC_JSP_Common.setlistfromdb(arr3, dbcolname3, query3, url, username, password);
//request.setAttribute("lead_att",lead_att);
//request.setAttribute("lead_notes",lead_notes);
//out.print(lead_att);
//out.print(lead_notes);
/////////////////////////////////////////////////////////////////////////////////////////////////
//ArrayList id =new ArrayList();
ArrayList lead_att =new ArrayList();
//ArrayList lead_date =new ArrayList();
ArrayList lead_notes =new ArrayList();
//ArrayList Replace_part =new ArrayList();
//
ArrayList ref_id =new ArrayList();
//ArrayList time =new ArrayList();
ArrayList entrytim =new ArrayList();
//ArrayList follow_up_date =new ArrayList();
ArrayList wa_status =new ArrayList();
ArrayList Work_done =new ArrayList();
ArrayList Run_Load_HRS =new ArrayList();
ArrayList CABE =new ArrayList();
ArrayList rlh2 =new ArrayList();

ArrayList[] arr1={id,lead_att,ref_id,time,entrytim,wa_status,Replace_part,Work_done,Run_Load_HRS,CABE,rlh2,lead_notes};
String[] dbcolname1={"id","lead_att","ref_id","time","entrytim","wa_status","Replace_part","Work_done","Run_Load_HRS","CABE","rlh2","lead_notes"};
String query1="select * from lead_effort";
JVC_JSP_Common.setlistfromdb(arr1, dbcolname1, query1, url, username, password);



request.setAttribute("id",id);
request.setAttribute("lead_att",lead_att);
request.setAttribute("lead_notes",lead_notes);
request.setAttribute("ref_id",ref_id);
request.setAttribute("time",time);
request.setAttribute("entrytim",entrytim);
request.setAttribute("wa_status",wa_status);
request.setAttribute("Work_done",Work_done);
request.setAttribute("Run_Load_HRS",Run_Load_HRS);
request.setAttribute("CABE",CABE);
request.setAttribute("rlh2",rlh2);
request.setAttribute("Replace_part",Replace_part);

//out.print(lead_att+"<br><br>");
//out.print(lead_notes+"<br><br>");
//out.print(lead_status+"<br><br>");
//out.print(ref_id+"<br><br>");
//out.print(follow_up_date+"<br><br>");
//out.print(time+"<br><br>");
//out.print(entrytim+"<br><br>");
//out.print(wa_status+"<br><br>");
//out.print(Replace_part+"<br><br>");
//out.print(Work_done+"<br><br>");
//out.print(Run_Load_HRS+"<br><br>");
//out.print(rlh2+"<br><br>");
//out.print(CABE+"<br><br>");
//////////////////////////////////////////////////////////////////////////////////////////////////////
request.getRequestDispatcher("Report.jsp").forward(request, response); 
                
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
