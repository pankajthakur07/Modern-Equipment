package main;

import java.io.IOException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jvc_source_common.JVC_JSP_Common;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;




public class Electrical extends HttpServlet {

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
   String[] dbcolname=new String[2];
    String[] dbvalues=new String[2];
    int i=1;
   String get_id="";
     String tablename="Electrical";
    if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);               
                for(FileItem item : multiparts){                    
                    if(item.isFormField()){
                        {
                        String fieldName = item.getFieldName();  
                         dbcolname[i]=fieldName;
                        String fieldValue = item.getString();                                      
                        dbvalues[i]=jvc_source_common.jvcsolutions_common.getvalueaccordingtocolumntype(url, username, password, tablename, fieldName, fieldValue);
                        i++;
                    }
                    }
                }
            }catch(Exception ex){
                
            }
            int count=0;
            outerloop:
            while (true) {                
                dbvalues[0]=JVC_JSP_Common.getcurridoftblstr(tablename, url, username, password);
                get_id=dbvalues[0];
                dbcolname[0]="id";
                String insertquery=JVC_JSP_Common.getinsertquery(tablename, dbcolname, dbvalues);                
                //out.print(insertquery);
                String Result=JVC_JSP_Common.insertupdateindbsilent(insertquery, url, username, password);                
                if(Result.equalsIgnoreCase("Success")||count==11){
                    out.print("<script>alert('Data Save!');</script>");
             out.print("<script>window.location.href='/Forms2/Electrical_Register'</script>");
                    break outerloop;
                }
                count++;
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