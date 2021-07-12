<%-- 
    Document   : Get_Way
    Created on : Feb 13, 2020, 10:40:52 PM
    Author     : Hitech Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        
        <style>
            #singlebutton{
                text-align: center;
                width: 330px;
                padding:10px; 
                
            }
            .center{
                text-align: center;
                
            }
         .button {
  background-color: blue;  
  border-radius: 9px;
  color: white;
  padding:10px; 
  text-decoration: none;
   width: 330px;
}
        </style>
        <title>Nature_of_complaint</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
      
              <form class="form-horizontal" id="myform" action="Nature_of_complaint" method="post" enctype="multipart/form-data">


<!-- Form Name -->
<legend style="font-weight: bold;">Nature_of_complaint</legend>
<div class="center">

<!-- Button -->
<div class="form-group">
 
  <div class="col-md-12">
    <a id="singlebutton" name="singlebutton" class="btn btn-success button" onclick="javascript:window.location.href='/Forms2/Nature_of_complaint1_Register'">Nature_of_complaint</a>
  </div>
</div>
<div class="form-group">
 
  <div class="col-md-12">
    <a id="singlebutton" name="singlebutton" class="btn btn-success button" onclick="javascript:window.location.href='/Forms2/Category_of_problem_Register'">Category_of_problem</a>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  
  <div class="col-md-12">
  <a id="singlebutton" name="singlebutton" class="btn btn-success button" onclick="javascript:window.location.href='/Forms2/Electrical_Register'">Electrical</a>
  </div>
</div>

<div>
    &nbsp;
</div>
<!-- Button -->
<div class="form-group">
  
  <div class="col-md-12">
    <a id="singlebutton" name="singlebutton" class="btn btn-success button" onclick="javascript:window.location.href='/Forms2/Mechanical_Register'">Mechanical</a>
  </div>
</div>



<div class="form-group">
  
  <div class="col-md-12">
     <a id="singlebutton" name="singlebutton" class="btn btn-success button" onclick="javascript:window.location.href='/Forms2/Refrigeration_Register'">Refrigeration</a>
          
  </div>
</div>



<div>
    &nbsp;
</div>

<!--
<div class="form-group">
 
  <div class="col-md-12">
    <a id="singlebutton" name="singlebutton" class="btn btn-success button" onclick="javascript:window.location.href='/Forms2/Assign_Register'">Assign</a>
  </div>
</div>-->


     <input type="button" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/Masterpage/Masterpage'"/>
        
</div>
 </form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    </body>
    
</html>
