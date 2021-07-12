package main;

import java.io.File;
//import java.io.IOException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jvc_source_common.JVC_JSP_Common;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;




public class Complaint_entry_save extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

             String id1=request.getParameter("id");

          String url=JVC_JSP_Common.geturl(request.getRequestURI());
            String username=JVC_JSP_Common.getusername(request.getRequestURI());
            String password=JVC_JSP_Common.getpassword(request.getRequestURI());
 String id = "";
  String lead_att = "";
 String lead_notes = "";
 String lead_status = "";
 String time = "";
 String entrytim = "";
 String Replace_part = "";
 String Work_done = "";
 String Run_Load_HRS = "";
 String ref_id = "";
  String CABE = "";
 String rlh2 = "";
FileItem item2=null;
String uploadedfilename="";
String UPLOAD_DIRECTORY="";
String follow_up_date = "";
   String wa_status = "";
    int i=1;
   String get_id="";
     String tablename="lead_effort";
    if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);               
                for(FileItem item : multiparts){                    
                        String fieldName = item.getFieldName();  
                        String fieldValue = item.getString();                                      
//                         out.print(fieldName+"<br>");
//                         out.print(fieldValue+"<br>");
                    if(item.isFormField()){
                        {if(fieldName.equalsIgnoreCase("ref_id")){
                                ref_id=fieldValue;
                        }
                            if(fieldName.equalsIgnoreCase("lead_att")){
                                lead_att=fieldValue;
                            }
                             if(fieldName.equalsIgnoreCase("wa_status")){
                                wa_status=fieldValue;
                            }
                            if(fieldName.equalsIgnoreCase("follow_up_date")){
                                follow_up_date=fieldValue;
                            }
                             if(fieldName.equalsIgnoreCase("CABE")){
                                CABE=fieldValue;
                            }
                             if(fieldName.equalsIgnoreCase("rlh2")){
                                rlh2=fieldValue;
                            }
                             
                            if(fieldName.equalsIgnoreCase("lead_notes")){
                                lead_notes=fieldValue;
                            }
                           if(fieldName.equalsIgnoreCase("lead_status")){
                                lead_status=fieldValue;
                            } if(fieldName.equalsIgnoreCase("time")){
                                time=fieldValue;
                            } if(fieldName.equalsIgnoreCase("entrytim")){
                                entrytim=fieldValue;
                            } if(fieldName.equalsIgnoreCase("Replace_part")){
                                if(Replace_part.isEmpty()){
                                    Replace_part=fieldValue;
                                }else{
                                Replace_part=Replace_part+","+fieldValue;    
                                }
                                
                            } if(fieldName.equalsIgnoreCase("Work_done")){
                                Work_done=fieldValue;
                            } if(fieldName.equalsIgnoreCase("Run_Load_HRS")){
                                Run_Load_HRS=fieldValue;
                            }
                        }
                }else if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                         if(name.isEmpty()==false){
                         UPLOAD_DIRECTORY=JVC_JSP_Common.getuploadpath(request.getRequestURI());
                         UPLOAD_DIRECTORY=UPLOAD_DIRECTORY+ref_id;
                        File abc=new File(UPLOAD_DIRECTORY);
                         if (!abc.exists()) {
            if (abc.mkdir()) {
                System.out.println("Directory is created!");
            } else {
                System.out.println("Failed to create directory!");
            }
            }
         item2=item;
         uploadedfilename=name;
            }
                }
                }
            }catch(Exception ex){
                out.print(ex);
            }

            String currid=JVC_JSP_Common.getcurridoftblstr(tablename, url, username, password);
    String[] dbcolname={"id","lead_notes","lead_status","time","entrytim","Replace_part","Work_done","Run_Load_HRS","ref_id","rlh2","CABE","follow_up_date","wa_status"};    
    String[] dbvalues={currid,lead_notes,lead_status,time,entrytim,Replace_part,Work_done,Run_Load_HRS,ref_id,rlh2,CABE,follow_up_date,wa_status};
    String insertquery=JVC_JSP_Common.getinsertquery(tablename, dbcolname, dbvalues);
    String result=JVC_JSP_Common.insertupdateindbsilent(insertquery, url, username, password);
    out.print(result);
       //out.print(result);
   if(result.equalsIgnoreCase("Success")){
       try{
                                               String fileNameWithOutExt = FilenameUtils.removeExtension(uploadedfilename);
                        fileNameWithOutExt=fileNameWithOutExt.replace("&", "_");
                        String filextension=FilenameUtils.getExtension(uploadedfilename);
                        uploadedfilename=currid+"_"+fileNameWithOutExt+"."+filextension;
                         String filename=UPLOAD_DIRECTORY+ File.separator + uploadedfilename;
                        item2.write( new File(filename));
           String updatequery="update lead_effort set lead_att='"+uploadedfilename+"' where id='"+currid+"'";
           JVC_JSP_Common.insertupdateindbsilent(updatequery, url, username, password);
       }catch(Exception ex){
           out.print(ex);
           JVC_JSP_Common.generateerrorfile(ex.toString(), "Upload Error Effort");
       }
       String updatequery="update lead_entry set lead_status='"+wa_status+"' where id='"+ref_id+"'";
       JVC_JSP_Common.insertupdateindbsilent(updatequery, url, username, password);
       
    out.print("<script>alert('Data Save!');</script>");
             out.print("<script>window.location.href='/Coplaint_Entry/Complaint_entry_Register?id="+ref_id+"'</script>");

   }
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