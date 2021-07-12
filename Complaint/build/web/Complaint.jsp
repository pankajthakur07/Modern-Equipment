<%-- 
    Document   : customer_master
    Created on : 13 Feb, 2020, 11:59:52 PM
    Author     : Aarush
--%>
<%@page import="jvc_source_common.JVC_JSP_Common"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <style>
            select{
                width:215px;
                margin:10px;
            }
            select:focus{
                min-width: 215px;
                width: auto;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Complaint</title>
     
  </head>
    <body>
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
          <h3>Complaint</h3>
          <script>
      var customer_name=[];//////Customer_name
              var model=[];//////////model_number
              var sr_no=[];////////serial_number
             var name10=[];///////nature_of_complaint
              var name2=[];///////Category.....
              var name3=[];////////Electrical
              var name4=[];/////////mechanical
              var name5=[];////////////Refrigeration
              var name1=[];//////////Assign
              
                          </script>
              
              
            <%  for(int i=0;i<Namearr6.size();i++)
            {
                %>
                <script>
                    customer_name[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Namearr6, i)%>";
                    </script>
                <% }
                %>
                <!--model////////////////////////////////////////////////-->
                            <%  for(int i=0;i<Namearr7.size();i++)
            {
                %>
                <script>
                    model[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Namearr7, i)%>";
                    </script>
                <% }
                %>
                <!---//////////////////////////////////serial number/////////////-->
                                            <%  for(int i=0;i<Namearr8.size();i++)
            {
                %>
                <script>
                    sr_no[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Namearr8, i)%>";
                    </script>
                <% }
                %>
                                <!---//////////////////////////////////Nature_of_complaint/////////////-->
                               <%  for(int i=0;i<Namearr.size();i++)
            {
                %>
                <script>
                    name10[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Namearr, i)%>";
                    </script>
                <% }
                %>
                                                   <!---//////////////////////////////////Category_of_problem/////////////-->
             
                                           <%  for(int i=0;i<Name1arr.size();i++)
            {
                %>
                <script>
                    name2[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Name1arr, i)%>";
                    </script>
                <% }
                %>
                              <!---//////////////////////////////////Electrical/////////////-->
                                     <%  for(int i=0;i<Namearr2.size();i++)
            {
                %>
                <script>
                    name3[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Namearr2, i)%>";
                    </script>
                <% }
                %>
                      <!---//////////////////////////////////mechanical/////////////-->

                                         <%  for(int i=0;i<Namearr3.size();i++)
            {
                %>
                <script>
                    name4[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Namearr3, i)%>";
                    </script>
                <% }
                %>
                   <!---//////////////////////////////////Refrigeration/////////////-->
                                               <%  for(int i=0;i<Namearr4.size();i++)
            {
                %>
                <script>
                    name5[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Namearr4, i)%>";
                    </script>
                <% }
                %>
                   <!---//////////////////////////////////assign/////////////-->
                                             <%  for(int i=0;i<Namearr5.size();i++)
            {
                %>
                <script>
                    name1[<%=i%>]="<%=JVC_JSP_Common.getvaluefromarraylist(Namearr5, i)%>";
                    </script>
                <% }
                %>
              
                                
                
     <form class="form-horizontal" id="myform" action="Complaint" method="post" enctype="multipart/form-data">
         
			<table style="with: 100%">
                            
                            <tr>
                                <td><label class="col-md-4 control-label" for="textinput">Customer_name</label></td>
                                <td>  <select id="selectbasic" name="lead_name" class="form-control" oninput="setmodelnumber()">
 <%
 for( int i=0;i<Namearr6.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr6, i);
 
 %>
 <option value="<%=namsetsr%>"> <%=namsetsr%></option>
     <%}%>
 


    </select></td>
                            </tr>
                             <tr>
                                <td><label class="col-md-4 control-label" for="textinput">Model_number</label></td>
                                <td>  <select id="selectbasic" name="lead_source" class="form-control">
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
                                <td>  <select id="selectbasic" name="lead_status" class="form-control">
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
     <td> <label class="col-md-4 control-label" for="textinput">Assign</label></td>
     <td>
    <select id="selectbasic" name="tally_serial_number" class="form-control">
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
         <input type="text" name="lead_owner">
  
     </td>
     </tr> 
                        </table>
     
			<input type="submit" value="Save" />
                        <input type="button" value="Back" onclick="javascript:window.location.href='/Complaint/Complaint_Register'" />
       </form>
     <script>
         function setmodelnumber(){
   document.getElementsByName("Model_number")[0].selectedIndex=document.getElementsByName("Customer_name")[0].selectedIndex;
  document.getElementsByName("Serial_number")[0].selectedIndex=document.getElementsByName("Customer_name")[0].selectedIndex;
  //document.getElementsByName("Assign")[0].selectedIndex=document.getElementsByName("Customer_name")[0].selectedIndex;

         }
         </script>
        
   
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 i
    </body>
</html>
