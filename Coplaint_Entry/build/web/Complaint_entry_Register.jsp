<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
     <%
    String id1=request.getAttribute("id1").toString();
        String isremarkstohide=request.getAttribute("isremarkstohide").toString();

    
    
    %>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
Lead_effort</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head >
 <body >
     
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%
List idarr = (ArrayList)request.getAttribute("id");
List lead_attarr = (ArrayList)request.getAttribute("lead_att");
List lead_datearr = (ArrayList)request.getAttribute("lead_date");
List lead_notesarr = (ArrayList)request.getAttribute("lead_notes");
List lead_statusarr = (ArrayList)request.getAttribute("lead_status");
List ref_idarr = (ArrayList)request.getAttribute("ref_id");
List follow_up_datearr = (ArrayList)request.getAttribute("follow_up_date");
List timearr = (ArrayList)request.getAttribute("time");
List entrytimarr = (ArrayList)request.getAttribute("entrytim");
//List usernamearr = (ArrayList)request.getAttribute("username");
List wa_statusarr = (ArrayList)request.getAttribute("wa_status");
List Replace_partarr = (ArrayList)request.getAttribute("Replace_part");
List Work_donearr = (ArrayList)request.getAttribute("Work_done");
List Run_Load_HRSarr = (ArrayList)request.getAttribute("Run_Load_HRS");
List rlh2arr = (ArrayList)request.getAttribute("rlh2");
List CABEarr = (ArrayList)request.getAttribute("CABE");

%>
<input type="button" value="Add" name="btn" size="20" onclick="javascript:window.location.href='/Coplaint_Entry/Complaint_entry?id=<%=id1%>'"/>

<input type="button" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/WebApplication8/Register'"/>

<table class="table table-bordered">
    <td  hidden>Entering Complaint  Id=<%=id1%></td>
<thead>
<tr>
<th>
                 <b>Id</b>
</th>
<th style="width:100px">
                 <b>Attachment</b>
</th>
<th hidden>
                 <b>Lead_Date</b>
</th>
<th <%=isremarkstohide%>>
                 <b>Remarks</b>
</th>
<th>
                 <b>Report_No.</b>
</th>
<th hidden>
                 <b>Ref_Id</b>
</th>
<th>
                 <b>Follow_Up_Date</b>
</th>
<th  hidden>
                 <b>Replace_time</b>
</th>
<th>
                 <b>Coplaint_Close_Hrs.</b>
</th>

<th >
                 <b>Status</b>
</th>
<th>
                 <b>Replace_Part</b>
</th>
<th>
                 <b>Work_Done</b>
</th>
<th>
                 <b>Replace</b>
</th>
<th>
                 <b>Complaint_Analysis_By_Enginner</b>
</th>
<th>
                 <b>Run/Load/hrs</b>
</th>
</tr>
</thead>
<tbody>
    
<%
for(int i=0;i<idarr.size();i++){
String idstr=idarr.get(i).toString();
String lead_attstr=lead_attarr.get(i).toString();
String rlh2str=rlh2arr.get(i).toString();
String CABEstr=CABEarr.get(i).toString();

String lead_datestr=lead_datearr.get(i).toString();
String lead_notesstr=lead_notesarr.get(i).toString();
String lead_statusstr=lead_statusarr.get(i).toString();
String ref_idstr=ref_idarr.get(i).toString();
String follow_up_datestr=follow_up_datearr.get(i).toString();
String timestr=timearr.get(i).toString();
String entrytimstr=entrytimarr.get(i).toString();
//String usernamestr=usernamearr.get(i).toString();
String wa_statusstr=wa_statusarr.get(i).toString();
String Replace_partstr=Replace_partarr.get(i).toString();
String Work_donestr=Work_donearr.get(i).toString();
String Run_Load_HRSstr=Run_Load_HRSarr.get(i).toString();
%>
<tr>
<td>
                <a href="alter_Lead_effort?id=<%=idstr %>"> <%=idstr %></a>
             </td>
<td>
    <a href="Download?id=<%=idstr %>" ><%=lead_attstr %></a>
    
             </td>
<td hidden>
                 <%=lead_datestr %>
             </td>
<td   <%=isremarkstohide%>  >
                 <%=lead_notesstr %>
             </td>
<td>
                 <%=lead_statusstr %>
             </td>
<td hidden>       
    <%=ref_idstr %>
     
             </td>
<td>
                 <%=follow_up_datestr %>
             </td>
<td hidden>
                 <%=timestr %>
             </td>
<td>
                 <%=entrytimstr %>
             </td>

<td >
                 <%=wa_statusstr %>
             </td>
<td>
                 <%=Replace_partstr %>
             </td>
<td>
                 <%=Work_donestr %>
             </td>
<td>
                 <%=Run_Load_HRSstr %>
             </td>
             <td>
                 <%=CABEstr  %>
             </td>
             <td> 
                 <%=rlh2str%>
             </td>
</tr>
<%}%>
</tbody>
</table>
 </body >
 </html>
