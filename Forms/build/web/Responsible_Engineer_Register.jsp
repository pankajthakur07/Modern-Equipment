<%-- 
    Document   : Responsible_Engineer_Register
    Created on : Feb 17, 2020, 12:30:09 AM
    Author     : Hitech Computer
--%>


<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
Responsible_Engineer</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head >
 <body >
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%
List idarr = (ArrayList)request.getAttribute("id");
List name1arr = (ArrayList)request.getAttribute("name1");
List Emailarr = (ArrayList)request.getAttribute("Email");
List Phonearr = (ArrayList)request.getAttribute("Phone");
List User_namearr = (ArrayList)request.getAttribute("User_name");
List User_passwordarr = (ArrayList)request.getAttribute("User_password");
List typearr = (ArrayList)request.getAttribute("type");
%>
<input type="button" value="Add" name="btn" size="20" onclick="javascript:window.location.href='/Forms/r'"/>
<input type="button" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/Get_Way/get_way'"/>

<table class="table table-bordered">
<thead>
<tr>
<th>
                 <b>Id</b>
</th>
<th>
                 <b>Responsible_Engineer</b>
</th>
<th>
                 <b>Designation</b>
</th>
<th>
                 <b>Email</b>
</th>
<th>
                 <b>Phone</b>
</th>
<th>
                 <b>User_name</b>
</th>
<th>
                 <b>User_Password</b>
</th>

</tr>
</thead>
<tbody>
<%
for(int i=0;i<idarr.size();i++){
String idstr=idarr.get(i).toString();
String name1str=name1arr.get(i).toString();
String Emailstr=Emailarr.get(i).toString();
String Phonestr=Phonearr.get(i).toString();
String User_namestr=User_namearr.get(i).toString();
String User_passwordstr=User_passwordarr.get(i).toString();
String typestr=typearr.get(i).toString();
%>
<tr>
<td>
                <a href="Responsible_Engineer_alter?id=<%=idstr %>"> <%=idstr %></a>
             </td>
<td>
                 <%=name1str %>
             </td>
               <td>
                 <%=typestr %>
             </td>
             <td>
                 <%=Emailstr %>
             </td>
             <td>
                 <%=Phonestr %>
             </td>
             <td>
                 <%=User_namestr %>
             </td>
             <td>
                 <%=User_passwordstr %>
             </td>
           
</tr>
<%}%>
</tbody>
</table>
 </body >
 </html>

