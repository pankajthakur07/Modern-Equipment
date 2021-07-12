<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
lead_entry</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head >
 <body >
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%
List idarr = (ArrayList)request.getAttribute("id");
List lead_datearr = (ArrayList)request.getAttribute("lead_date");
List lead_namearr = (ArrayList)request.getAttribute("lead_name");
List lead_sourcearr = (ArrayList)request.getAttribute("lead_source");
List lead_statusarr = (ArrayList)request.getAttribute("lead_status");
List land_linearr = (ArrayList)request.getAttribute("land_line");
List mobile_noarr = (ArrayList)request.getAttribute("mobile_no");
List emailarr = (ArrayList)request.getAttribute("email");
List date_of_birtharr = (ArrayList)request.getAttribute("date_of_birth");
List areaarr = (ArrayList)request.getAttribute("area");
List intrest_typearr = (ArrayList)request.getAttribute("intrest_type");
List effort_datearr = (ArrayList)request.getAttribute("effort_date");
List lead_ownerarr = (ArrayList)request.getAttribute("lead_owner");
List timearr = (ArrayList)request.getAttribute("time");
List tally_serial_numberarr = (ArrayList)request.getAttribute("tally_serial_number");
%>
<input type="button" value="Add" name="btn" size="20" onclick="javascript:window.location.href='/Complaint/c'"/>

<input type="button" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/WebApplication8/Register'"/>
<table class="table table-bordered">
<thead>
<tr>
<th>
                 <b>Id</b>
</th>
<th hidden>
                 <b>Lead Date</b>
</th>
<th>
                 <b>Customer_name</b><!-- Lead name-->
</th>
<th>
                 <b>Model_number</b><!-- Lead Sourse-->
</th>
<th>
                 <b>Status</b><!-- Lead Status-->
</th>
<th>
                 <b>Nature_of_complaint	</b><!-- land_line-->
</th>
<th>
                 <b>Category_of_problem	</b><!-- mobile_no	-->
</th>
<th>
                 <b>Electrical	</b><!-- Email	-->
</th>
<th hidden>
                 <b>Date Of Birth</b>
</th>
<th>
                 <b>Mechanical</b><!-- Area-->
</th>
<th>
                 <b>Refrigeration</b><!-- Intrest type-->
</th>
<th hidden>
                 <b>Effort Date</b>
</th>
<th>
                 <b>Serial_number</b><!-- Lead owner-->
</th>
<th hidden>
                 <b>Time</b>
</th>
<th>
                 <b>Assign</b><!-- Tally Serial Number-->
</th>
</tr>
</thead>
<tbody>
<%
for(int i=0;i<idarr.size();i++){
String idstr=idarr.get(i).toString();
String lead_datestr=lead_datearr.get(i).toString();
String lead_namestr=lead_namearr.get(i).toString();
String lead_sourcestr=lead_sourcearr.get(i).toString();
String lead_statusstr=lead_statusarr.get(i).toString();
String land_linestr=land_linearr.get(i).toString();
String mobile_nostr=mobile_noarr.get(i).toString();
String emailstr=emailarr.get(i).toString();
String date_of_birthstr=date_of_birtharr.get(i).toString();
String areastr=areaarr.get(i).toString();
String intrest_typestr=intrest_typearr.get(i).toString();
String effort_datestr=effort_datearr.get(i).toString();
String lead_ownerstr=lead_ownerarr.get(i).toString();
String timestr=timearr.get(i).toString();
String tally_serial_numberstr=tally_serial_numberarr.get(i).toString();
%>
<tr>
<td>
                <a href="alter?id=<%=idstr %>"> <%=idstr %></a>
             </td>
<td hidden>
                 <%=lead_datestr %>
             </td>
<td>
                 <%=lead_namestr %>
             </td>
<td>
                 <%=lead_sourcestr %>
             </td>
<td>
                 <%=lead_statusstr %>
             </td>
<td>
                 <%=land_linestr %>
             </td>
<td>
                 <%=mobile_nostr %>
             </td>
<td>
                 <%=emailstr %>
             </td>
<td hidden>
                 <%=date_of_birthstr %>
             </td>
<td>
                 <%=areastr %>
             </td>
<td>
                 <%=intrest_typestr %>
             </td>
<td hidden>
                 <%=effort_datestr %>
             </td>
<td>
                 <%=lead_ownerstr %>
             </td>
<td hidden>
                 <%=timestr %>
             </td>
<td>
                 <%=tally_serial_numberstr %>
             </td>
</tr>
<%}%>
</tbody>
</table>
 </body >
 </html>
