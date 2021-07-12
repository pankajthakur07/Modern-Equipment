<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
Equipment_master1</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head >
 <body >
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%
List idarr = (ArrayList)request.getAttribute("id");
List name6arr = (ArrayList)request.getAttribute("name6");
%>
<input type="button" value="Add" name="btn" size="20" onclick="javascript:window.location.href='/Forms/em1'"/>

<input type="button" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/Get_Way/get_way'"/>
<table class="table table-bordered">
<thead>
<tr>
<th>
                 <b>Id</b>
</th>
<th>
                 <b>Name6</b>
</th>
</tr>
</thead>
<tbody>
<%
for(int i=0;i<idarr.size();i++){
String idstr=idarr.get(i).toString();
String name6str=name6arr.get(i).toString();
%>
<tr>
<td>
                <a href="alter_Equipment_master1?id=<%=idstr %>"> <%=idstr %></a>
             </td>
<td>
                 <%=name6str %>
             </td>
</tr>
<%}%>
</tbody>
</table>
 </body >
 </html>
