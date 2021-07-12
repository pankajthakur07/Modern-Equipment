<%@page import="jvc_source_common.JVC_JSP_Common"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
            <html>
 <head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
lead_entry</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head >
 <body >
     
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
</script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
</script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
</script>
      <%
ArrayList Namearr = (ArrayList)request.getAttribute("name10");
ArrayList Name1arr = (ArrayList)request.getAttribute("name2");
ArrayList Namearr2 = (ArrayList)request.getAttribute("name3");
ArrayList Namearr3 = (ArrayList)request.getAttribute("name4");
ArrayList Namearr4= (ArrayList)request.getAttribute("name5");
ArrayList Namearr5= (ArrayList)request.getAttribute("name1");
ArrayList Namearr6 = (ArrayList)request.getAttribute("customer_name");
ArrayList Namearr7= (ArrayList)request.getAttribute("model");
ArrayList Namearr8= (ArrayList)request.getAttribute("sr_no");

%> 

 <form class="form-horizontal" id="myform" action="Complaint" method="post" enctype="multipart/form-data">
     
         <h2>Complaint Entry</h2>
     
			<table style="with: 100%">
                          
                            <tr>
                                <td><label class="col-md-4 control-label" for="textinput"  >Customer_name</label></td>
                                <td>  <select id="selectbasic" name="lead_name" class="form-control" onchange="setmodelnumber()">
                                         <option></option>
 <%
 for( int i=0;i<Namearr6.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr6, i);
 
 %>

 <option value="<%=namsetsr%>" > <%=namsetsr%></option>
     <%}%>
     </select></td>
                            </tr>
                             <tr>
                                <td><label class="col-md-4 control-label" for="textinput">Model_number</label></td>
                                <td>  <select id="selectbasic" name="lead_source" class="form-control">
                                         <option></option>
 <%
 for( int i=0;i<Namearr7.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr7, i);
 
 %>
  
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select></td>
                            </tr>
                             <tr>
                                <td><label class="col-md-4 control-label" for="textinput">Serial_number</label></td>
                                <td>  <select id="selectbasic" name="lead_owner" class="form-control">
                                        <option></option>
 <%
 for( int i=0;i<Namearr8.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr8, i);
 
 %>
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select></td>
                            </tr>
                     <tr>
     <td> <label class="col-md-4 control-label" for="textinput">Nature_of_complaint</label></td>
     <td>
    <select id="selectbasic" name="land_line" class="form-control">
        <option></option>
 <%
 for( int i=0;i<Namearr.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr, i);
 
 %>
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
     </tr>
                  <tr>
     <td> <label class="col-md-4 control-label" for="textinput">Category_of_problem</label></td>
     <td>
    <select id="selectbasic" name="mobile_no" class="form-control">
        <option></option>
 <%
 for( int i=0;i<Name1arr.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Name1arr, i);
 
 %>
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
     </tr>
                   <tr>
     <td> <label class="col-md-4 control-label" for="textinput">Electrical</label></td>
     <td>
    <select id="selectbasic" name="email" class="form-control">
        <option></option>
 <%
 for( int i=0;i<Namearr2.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr2, i);
 
 %>
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
     </tr>                 
            <tr>
     <td> <label class="col-md-4 control-label" for="textinput">Mechanical</label></td>
     <td>
    <select id="selectbasic" name="area" class="form-control">
        <option></option>
 <%
 for( int i=0;i<Namearr3.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr3, i);
 
 %>
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
     </tr>  
      <tr>
     <td> <label class="col-md-4 control-label" for="textinput">Refrigeration</label></td>
     <td>
    <select id="selectbasic" name="intrest_type" class="form-control">
        <option></option>
 <%
 for( int i=0;i<Namearr4.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr4, i);
 
 %>
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
     </tr>  
       <tr>
                                <td><label class="col-md-4 control-label" for="textinput"  >Date</label></td>
                                <td> <input type="date" name="lead_date">
                                </td>
                            </tr> 
      <tr>
     <td> <label class="col-md-4 control-label" for="textinput">Assign</label></td>
     <td>
    <select id="selectbasic" name="tally_serial_number" class="form-control">
        <option></option>
 <%
 for( int i=0;i<Namearr5.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr5, i);
 
 %>
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
     </tr>  
           <tr>
     <td> <label class="col-md-4 control-label" for="textinput">Status</label></td>
     <td>
         <!--<input  name="lead_status" class="form-control">-->
         <select name="lead_status" class="form-control">
             <option></option>
             <option>Open</option>
              <option>Closed</option>
         </select>
         
  
     </td>
     </tr> 
                        </table>
     
			<input type="submit" value="Save" />
                        <input type="button" value="Back" onclick="javascript:window.location.href='/Complaint/Complaint_Register'" />
       </form>
  <script>
         function setmodelnumber(){
   document.getElementsByName("lead_source")[0].selectedIndex=document.getElementsByName("lead_name")[0].selectedIndex;
  document.getElementsByName("lead_owner")[0].selectedIndex=document.getElementsByName("lead_name")[0].selectedIndex;
  //document.getElementsByName("Assign")[0].selectedIndex=document.getElementsByName("Customer_name")[0].selectedIndex;

         }
         </script>
 </body >
 </html >