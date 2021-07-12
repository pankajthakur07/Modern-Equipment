<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
responsible_engineer Alteration</title>
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
<form class="form-horizontal" id="myform" action="Responsible_Engineer_alter_save?id=<%=idarr.get(0).toString()%>" method="post" enctype="multipart/form-data">
<table class="table table-bordered">
<tbody>


<tr>
<td>Name1</td><td>
                 <input name="name1" type="text" value="<%=name1arr.get(0).toString() %>" placeholder="name1" >
             </td>
</tr>
<tr>
<td>Email</td><td>
                 <input name="Email" type="text" value="<%=Emailarr.get(0).toString() %>" placeholder="Email" >
             </td>
</tr>
<tr>
<td>Phone</td><td>
                 <input name="Phone" type="text" value="<%=Phonearr.get(0).toString() %>" placeholder="Phone" >
             </td>
</tr>
<tr>
<td>User Name</td><td>
                 <input name="User_name" type="text" value="<%=User_namearr.get(0).toString() %>" placeholder="User_name" >
             </td>
</tr>
<tr>
<td>User Password</td><td>
                 <input name="User_password" type="text" value="<%=User_passwordarr.get(0).toString() %>" placeholder="User_password" >
             </td>
</tr>
<tr>
<td>Type</td><td>
                 <input name="type" type="text" value="<%=typearr.get(0).toString() %>" placeholder="type" >
             </td>
</tr>
</tbody>
</table>
   <input id="textinput" name="myFile" type="file"  class="form-control input-md" hidden>
     <button id="singlebutton" name="singlebutton" class="btn btn-primary">Save</button>
     <a type="button " id="singlebutton" name="singlebutton" class="btn btn-primary" onclick="javascript:window.location.href='/Forms/Responsible_Engineer_alter_delete?id=<%=idarr.get(0).toString()%>'" >Delete</a >
</form>
</body>
</html>