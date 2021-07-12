<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
company_master</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head >
 <body >
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%
List idarr = (ArrayList)request.getAttribute("id");
List type_of_visitarr = (ArrayList)request.getAttribute("type_of_visit");
List amcarr = (ArrayList)request.getAttribute("amc");
List courtesyarr = (ArrayList)request.getAttribute("courtesy");
List warrantyarr = (ArrayList)request.getAttribute("warranty");
List chargeablearr = (ArrayList)request.getAttribute("chargeable");
%>
<!--<input type="button" value="Add" name="btn" size="20" onclick="javascript:window.location.href='/Forms/Company_master'"/>-->
<input type="button" value="Add" name="btn" size="20" onclick="javascript:window.location.href='/Forms/cm'"/>

<input type="button" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/Get_Way/get_way'"/>

<table class="table table-bordered">
<thead>
<tr>
<th>
                 <b>Id</b>
</th>
<th>
                 <b>Type Of Visit</b>
</th>
<th hidden>
                 <b>Amc</b>
</th>
<th hidden>
                 <b>Courtesy</b>
</th>
<th hidden>
                 <b>Warranty</b>
</th>
<th hidden>
                 <b>Chargeable</b>
</th>
</tr>
</thead>
<tbody>
<%
for(int i=0;i<idarr.size();i++){
String idstr=idarr.get(i).toString();
String type_of_visitstr=type_of_visitarr.get(i).toString();
String amcstr=amcarr.get(i).toString();
String courtesystr=courtesyarr.get(i).toString();
String warrantystr=warrantyarr.get(i).toString();
String chargeablestr=chargeablearr.get(i).toString();
%>
<tr>
<td>
                <a href="alter_company_master?id=<%=idstr %>"> <%=idstr %></a>
             </td>
<td>
                 <%=type_of_visitstr %>
             </td>
<td hidden>
                 <%=amcstr %>
             </td>
<td hidden>
                 <%=courtesystr %>
             </td>
<td hidden>
                 <%=warrantystr %>
             </td>
<td hidden>
                 <%=chargeablestr %>
             </td>
</tr>
<%}%>
</tbody>
</table>
 </body >
 </html>
