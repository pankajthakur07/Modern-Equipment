<%-- 
    Document   : Company_master
    Created on : 13 Feb, 2020, 11:49:53 PM
    Author     : Aarush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    
            
    </head>
    <body>
    
           <h3>Status</h3>
          <!-- <form class="form-horizontal" id="myform" action="Company_master" method="post" enctype="multipart/form-data">-->
                <form class="form-horizontal" id="myform" action="Status" method="post" enctype="multipart/form-data">
			<table style="with: 50%">
				<tr>
					<td>Status</td>
					<td><input type="text" name="name4" /></td>
				</tr>
                                                       
				</table> 
			<input type="submit" value="Save"/>
                      
                             <input type="button" value="Back" onclick="javascript:window.location.href='/Forms/Sold_by_Register'" />
       
                </form>
          


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
