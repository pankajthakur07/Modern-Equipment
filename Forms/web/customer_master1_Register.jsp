<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
customer_master1</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head >
 <body >
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%
List idarr = (ArrayList)request.getAttribute("id");
List customerarr = (ArrayList)request.getAttribute("customer");
List customer_namearr = (ArrayList)request.getAttribute("customer_name");
List modelarr = (ArrayList)request.getAttribute("model");
List part_noarr = (ArrayList)request.getAttribute("part_no");
List sr_noarr = (ArrayList)request.getAttribute("sr_no");
List ref_noarr = (ArrayList)request.getAttribute("ref_no");
List docarr = (ArrayList)request.getAttribute("doc");
List addressarr = (ArrayList)request.getAttribute("address");
List contact_personarr = (ArrayList)request.getAttribute("contact_person");
List contact_noarr = (ArrayList)request.getAttribute("contact_no");
List designationarr = (ArrayList)request.getAttribute("designation");
List Equpmentarr = (ArrayList)request.getAttribute("Equpment");
List Machine_Typearr = (ArrayList)request.getAttribute("Machine_Type");
List Statusarr = (ArrayList)request.getAttribute("Status");
List Type_of_visitarr = (ArrayList)request.getAttribute("Type_of_visit");
List Sold_byarr = (ArrayList)request.getAttribute("Sold_by");
List Responsible_Engineerarr = (ArrayList)request.getAttribute("Responsible_Engineer");
%>
<input type="button" value="Add" name="btn" size="20"  onclick="javascript:window.location.href='/Forms/cuma'"/>

<input type="button" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/Masterpage/Masterpage'"/>
<table class="table table-bordered">
<thead>
<tr>
<th>
                 <b>Id</b>
</th>
<th hidden>
                 <b>Customer</b>
</th>
<th>
                 <b>Customer_Name</b>
</th>
<th>
                 <b>Model</b>
</th>
<th>
                 <b>Part_No</b>
</th>
<th>
                 <b>Sr_No</b>
</th>
<th>
                 <b>Ref_No</b>
</th>
<th>
                 <b>Doc</b>
</th>
<th>
                 <b>Address</b>
</th>
<th>
                 <b>Contact_Person</b>
</th>
<th>
                 <b>Contact_No</b>
</th>
<th>
                 <b>Designation</b>
</th>
<th>
                 <b>Equpment</b>
</th>
<th>
                 <b>Machine_Type</b>
</th>
<th>
                 <b>Status</b>
</th>
<th>
                 <b>Type_Of_Visit</b>
</th>
<th>
                 <b>Sold_By</b>
</th>
<th>
                 <b>Responsible_Engineer</b>
</th>
</tr>
</thead>
<tbody>
<%
for(int i=0;i<idarr.size();i++){
String idstr=idarr.get(i).toString();
String customerstr=customerarr.get(i).toString();
String customer_namestr=customer_namearr.get(i).toString();
String modelstr=modelarr.get(i).toString();
String part_nostr=part_noarr.get(i).toString();
String sr_nostr=sr_noarr.get(i).toString();
String ref_nostr=ref_noarr.get(i).toString();
String docstr=docarr.get(i).toString();
String addressstr=addressarr.get(i).toString();
String contact_personstr=contact_personarr.get(i).toString();
String contact_nostr=contact_noarr.get(i).toString();
String designationstr=designationarr.get(i).toString();
String Equpmentstr=Equpmentarr.get(i).toString();
String Machine_Typestr=Machine_Typearr.get(i).toString();
String Statusstr=Statusarr.get(i).toString();
String Type_of_visitstr=Type_of_visitarr.get(i).toString();
String Sold_bystr=Sold_byarr.get(i).toString();
String Responsible_Engineerstr=Responsible_Engineerarr.get(i).toString();
%>
<tr>
<td>
                <a href="alter_customer_master1?id=<%=idstr %>"> <%=idstr %></a>
             </td>
<td hidden>
                 <%=customerstr %>
             </td>
<td>
                 <%=customer_namestr %>
             </td>
<td>
                 <%=modelstr %>
             </td>
<td>
                 <%=part_nostr %>
             </td>
<td>
                 <%=sr_nostr %>
             </td>
<td>
                 <%=ref_nostr %>
             </td>
<td>
                 <%=docstr %>
             </td>
<td>
                 <%=addressstr %>
             </td>
<td>
                 <%=contact_personstr %>
             </td>
<td>
                 <%=contact_nostr %>
             </td>
<td>
                 <%=designationstr %>
             </td>
<td>
                 <%=Equpmentstr %>
             </td>
<td>
                 <%=Machine_Typestr %>
             </td>
<td>
                 <%=Statusstr %>
             </td>
<td>
                 <%=Type_of_visitstr %>
             </td>
<td>
                 <%=Sold_bystr %>
             </td>
<td>
                 <%=Responsible_Engineerstr %>
             </td>
</tr>
<%}%>
</tbody>
</table>
 </body >
 </html>
