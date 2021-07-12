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
        <title>Customer_master</title>
     
  </head>
    <body>
         <%
ArrayList Namearr = (ArrayList)request.getAttribute("name1");
ArrayList Name1arr = (ArrayList)request.getAttribute("name2");
ArrayList Namearr2 = (ArrayList)request.getAttribute("name3");
ArrayList Namearr3 = (ArrayList)request.getAttribute("name4");
ArrayList Namearr4= (ArrayList)request.getAttribute("name5");
ArrayList Namearr5= (ArrayList)request.getAttribute("name6");





%> 
          <h3>Customer_master</h3>
     <!--  <form class="form-horizontal" id="myform" action="customer_master1" method="post" enctype="multipart/form-data">-->
     <form class="form-horizontal" id="myform" action="customer_master1" method="post" enctype="multipart/form-data">
         
			<table style="with: 100%">
			
				<tr >
					<td>Customer_Name</td>
					<td><input type="text" name="customer_name" /></td>
				</tr>
				<tr >
					<td>Model</td>
					<td><input type="text" name="model" /></td>
				</tr>
					<tr>
					<td>Part_No</td>
					<td><input type="int" name="part_no" /></td>
				</tr>
				<tr>
					<td>Sr._No</td>
					<td><input type="text" name="sr_no" /></td>
				</tr>
                                   <tr>
     <td> <label class="col-md-4 control-label" for="textinput">Equipment_master</label></td>
     <td>
    <select id="selectbasic" name="Equpment" class="form-control">
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
     <td> <label class="col-md-4 control-label" for="textinput">Machine_type</label></td>
     <td>
    <select id="selectbasic" name="Machine_type" class="form-control">
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
     <td> <label class="col-md-4 control-label" for="textinput">Status</label></td>
     <td>
    <select id="selectbasic" name="Status" class="form-control">
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
     <td> <label class="col-md-4 control-label" for="textinput">Type_of_visit</label></td>
     <td>
    <select id="selectbasic" name="Type_of_visit" class="form-control">
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
     <td> <label class="col-md-4 control-label" for="textinput">Sold_by</label></td>
     <td>
    <select id="selectbasic" name="Sold_by" class="form-control">
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
     <td> <label class="col-md-4 control-label" for="textinput">Responsible_Engineer</label></td>
     <td>
    <select id="selectbasic" name="Responsible_Engineer" class="form-control">
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
					<td>Cu._M/c_Ref.No.</td>
					<td><input type="text" name="ref_no" /></td>
				</tr>
				<tr>
					<td>DOC</td>
					<td><input type="date" name="doc" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
					<tr>
					<td>Contact_Person</td>
					<td><input type="text" name="contact_person" /></td>
				</tr>
				<tr>
					<td>Contact_No.</td>
					<td><input type="int" name="contact_no" /></td>
				</tr>
				<tr>
					<td>Designation</td>
					<td><input type="text" name="designation" /></td>
				</tr>
                               
                               
                        
                        </table>
			<input type="submit" value="Save" />
                        <input type="button" value="Back" onclick="javascript:window.location.href='/Forms/customer_master1_Register'" />
       </form>

        
   
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
    </body>
</html>
