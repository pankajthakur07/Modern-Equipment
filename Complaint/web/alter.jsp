<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
lead_entry Alteration</title>
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
<form class="form-horizontal" id="myform" action="alter_register?id=<%=idarr.get(0).toString()%>" method="post" enctype="multipart/form-data">
<table class="table table-bordered">
<tbody>


<tr hidden>
<td>Lead Date</td><td>
                 <input name="lead_date" type="text" value="<%=lead_datearr.get(0).toString() %>" placeholder="lead_date" >
             </td>
</tr>
<tr>
<td>Lead Name</td><td>
                 <input name="lead_name" type="text" value="<%=lead_namearr.get(0).toString() %>" placeholder="lead_name" >
             </td>
</tr>
<tr>
<td>Lead Source</td><td>
                 <input name="lead_source" type="text" value="<%=lead_sourcearr.get(0).toString() %>" placeholder="lead_source" >
             </td>
</tr>
<tr>
<td>Lead Status</td><td>
                 <input name="lead_status" type="text" value="<%=lead_statusarr.get(0).toString() %>" placeholder="lead_status" >
             </td>
</tr>
<tr>
<td>Land Line</td><td>
                 <input name="land_line" type="text" value="<%=land_linearr.get(0).toString() %>" placeholder="land_line" >
             </td>
</tr>
<tr>
<td>Mobile No</td><td>
                 <input name="mobile_no" type="text" value="<%=mobile_noarr.get(0).toString() %>" placeholder="mobile_no" >
             </td>
</tr>
<tr>
<td>Email</td><td>
                 <input name="email" type="text" value="<%=emailarr.get(0).toString() %>" placeholder="email" >
             </td>
</tr>
<tr hidden>
<td>Date Of Birth</td><td>
                 <input name="date_of_birth" type="text" value="<%=date_of_birtharr.get(0).toString() %>" placeholder="date_of_birth" >
             </td>
</tr>
<tr>
<td>Area</td><td>
                 <input name="area" type="text" value="<%=areaarr.get(0).toString() %>" placeholder="area" >
             </td>
</tr>
<tr>
<td>Intrest Type</td><td>
                 <input name="intrest_type" type="text" value="<%=intrest_typearr.get(0).toString() %>" placeholder="intrest_type" >
             </td>
</tr>
<tr>
<td hidden>Effort Date</td><td>
                 <input name="effort_date" type="text" value="<%=effort_datearr.get(0).toString() %>" placeholder="effort_date" >
             </td>
</tr>
<tr>
<td>Lead Owner</td><td>
                 <input name="lead_owner" type="text" value="<%=lead_ownerarr.get(0).toString() %>" placeholder="lead_owner" >
             </td>
</tr>
<tr hidden>
<td>Time</td><td>
                 <input name="time" type="text" value="<%=timearr.get(0).toString() %>" placeholder="time" >
             </td>
</tr>
<tr>
<td>Tally Serial Number</td><td>
                 <input name="tally_serial_number" type="text" value="<%=tally_serial_numberarr.get(0).toString() %>" placeholder="tally_serial_number" >
             </td>
</tr>
</tbody>
</table>
   <input id="textinput" name="myFile" type="file"  class="form-control input-md" hidden>
     <button id="singlebutton" name="singlebutton" class="btn btn-primary">
Save</button>
</form>
</body>
</html>