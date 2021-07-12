<%@page import="jvc_source_common.JVC_JSP_Common"%>
<%@page import="java.util.ArrayList"%>
<html>
    <head><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!--<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.css" />-->
      
<!--      <script src = "https://code.jquery.com/jquery-1.11.3.min.js"></script>
      <script src = "https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>-->
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <meta name="viewport" content="width=device-width, initial-scale=1">

<style>
    div {
  width: 35px;
  height: 5px;
  background-color: black;
  margin: 6px 0;
}
body {
  font-family: "Lato", sans-serif;
}
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 5px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 10px;
}
.selectbox{      
  padding: 3px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 10px;
}

.optionbox{
  padding: 3px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 10px;
}
.search{
  padding: 3px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 10px;
}
.date{
  padding: 3px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 10px;
}
table tr[data-href] {
    cursor: pointer;
}

.rectangle {
  height: 30px;
  width: 120px;
  background-color: #c5d9f1;
  color:black;
  text-align: center;
  line-height: 30px;
}

.triangle-right {
	width: 0;
	height: 0;
	border-top: 15px solid transparent;
	border-left: 20px solid white;
	border-bottom: 15px solid transparent;
}

.triangle-right1 {
	width: 0;
	height: 0;
	border-top: 15px solid transparent;
	border-left: 20px solid #c5d9f1;
	border-bottom: 15px solid transparent;
        margin-left:120px;
}


.rectanglepass {
  height: 30px;
  width: 120px;
  background-color: #4f81bd;
  color:white;
  text-align: center;
  line-height: 30px;
}

.triangle-rightpass {
	width: 0;
	height: 0;
	border-top: 15px solid transparent;
	border-left: 20px solid white;
	border-bottom: 15px solid transparent;
}

.triangle-right1pass {
	width: 0;
	height: 0;
	border-top: 15px solid transparent;
	border-left: 20px solid #4f81bd;
	border-bottom: 15px solid transparent;
        margin-left:120px;
}


.ui-select{
  width:200px;
  height:70px;
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<title>Prepare Entry</title><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/loader.js"></script><link id="load-css-0" rel="stylesheet" type="text/css" href="https://www.gstatic.com/charts/47/css/core/tooltip.css"><link id="load-css-1" rel="stylesheet" type="text/css" href="https://www.gstatic.com/charts/47/css/util/util.css"><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/js/jsapi_compiled_format_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/js/jsapi_compiled_default_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/js/jsapi_compiled_ui_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/js/jsapi_compiled_corechart_module.js"></script></head>
     
     
 <body>
 <!--<from action="alter_save" method="post" >-->
     <%
                  ArrayList id=(ArrayList) request.getAttribute("id");

         ArrayList lead_name=(ArrayList) request.getAttribute("lead_name");
                  ArrayList lead_status=(ArrayList) request.getAttribute("lead_status");

         ArrayList lead_source=(ArrayList) request.getAttribute("lead_source");

         ArrayList land_line=(ArrayList) request.getAttribute("land_line");
         ArrayList mobile_no=(ArrayList) request.getAttribute("mobile_no");
         ArrayList email=(ArrayList) request.getAttribute("email");
         ArrayList intrest_type=(ArrayList) request.getAttribute("intrest_type");
         ArrayList tally_serial_number=(ArrayList) request.getAttribute("tally_serial_number");
         ArrayList area=(ArrayList) request.getAttribute("area");
         ArrayList lead_owner=(ArrayList) request.getAttribute("lead_owner");
         ArrayList lead_date=(ArrayList) request.getAttribute("lead_date");
                  ArrayList Equepment=(ArrayList) request.getAttribute("Equepment");
                                   ArrayList Machine_Type=(ArrayList) request.getAttribute("Machine_Type");
                  ArrayList Sold_by=(ArrayList) request.getAttribute("Sold_by");
                  ArrayList Category_of_problem=(ArrayList) request.getAttribute("Category_of_problem");
                  ArrayList Replace_part=(ArrayList) request.getAttribute("Replace_part");
                  ArrayList follow_up_date=(ArrayList) request.getAttribute("follow_up_date");
                   String type=request.getAttribute("type").toString();


                  String curr_username=request.getAttribute("curr_username").toString();
                  String isremarkstohide=request.getAttribute("isremarkstohide").toString();
                 // String lead_status1=request.getAttribute("lead_status1").toString();
                  //
                  //String isremarkstohide=request.getAttribute("isremarkstohide").toString();

ArrayList Namearr5= (ArrayList)request.getAttribute("name1");       

     %>
      <%
   //String interest_type11=request.getAttribute("interest_type11").toString(<%=interest_typ
    
    %>
    
    <div id="mySidenav" class="sidenav" style="width: 0px;">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
               
                <a style="color: blanchedalmond">Welcome, <%=curr_username%><br> 
                    <!--</%=type%/>-->
                    <br> </a>
            <a href="javascript:window.location.href='/Masterpage/Masterpage'">Masters</a>
            <a href="javascript:window.location.href='/Report/Report'">Report</a>
            <!--
                <a href="javascript:window.location.href='prepare_followup?entrydate=&amp;status=All&amp;entrydate2=2020-02-26&amp;back=display'">Followup Report</a>
                 
            
                <a href="javascript:window.location.href='effort_report?entrydate=&amp;status=All&amp;entrydate2=2020-02-26&amp;back=display'">Effort Report</a>
            
                
                <a href="javascript:window.location.href='preapare_status_value_report?entrydate=&amp;status=All&amp;entrydate2=2020-02-26&amp;back=display'">Status Summary</a>
                <a href="javascript:window.location.href='preapare_interest_type_wise_report?entrydate=&amp;status=All&amp;entrydate2=2020-02-26&amp;back=display'">Interest Type Wise Summary</a>
             -->
            <a href="javascript:window.location.href='/Forms/Responsible_Engineer_Register'">Change Password</a>           
            <a href="logout">Logout</a>
    </div>
    
    <table>        
        <tbody><tr style="width:100%">
            <td style="" colspan="7">
                
            </td>
        </tr>
    </tbody></table>
            
    <table <%=isremarkstohide%>>        
        <tbody>
            <tr>            
            
            <td  <%=isremarkstohide%>>
<span style="font-size:30px;cursor:pointer " onclick="openNav()">
    <div></div>
<div></div>
<div></div></span>            </td>                                    
            <td <%=isremarkstohide%>>
                <a href="javascript:window.location.href='/Complaint/c'" class="button" >Complaint_Entry</a>     
               <!-- <a href="javascript:window.location.href='prepare_entry?&amp;status=All&amp;back=display'" class="button">Complaint_Register</a>  -->   
            </td> 
            
            <td>
                <input type="text" name="search" placeholder="Search.." class="search">
            </td>
            <td <%=isremarkstohide%>>
          <a onclick="setandreloadpage2()" class="button" style="border-top-left-radius: unset;border-bottom-left-radius: unset; margin-left: -10px;">Search</a>
            </td>
             
        </tr>
    </tbody>
    </table>
    <table <%=isremarkstohide%>>
        <tbody><tr>
            <td>
                
            </td>
                
                  
                <td>
                    <input name="entrydate" type="date" value="2020-02-19" class="date">                    
                </td>
                <td>
                    &nbsp;&nbsp;To
                </td>
                <td>
                    <input name="entrydate2" type="date" value="2020-02-26" class="date">
                </td>
                                 
               
                
                 <td>
                 &nbsp;&nbsp;Status
                </td>
                <td>
                    &nbsp;&nbsp;<select value="" name="lead_status" class="selectbox">
                      
                            <option value=" " selected="" class="optionbox">All</option>
                            
                            <option value="Open" class="optionbox">Open</option>
                            
                         <option value="Closed" class="optionbox">Closed</option>
                            
                           <!--    <option value="Canidate ne mana kar diya" class="optionbox">Canidate ne mana kar diya</option>
                            
                            <option value="Rejected by US" class="optionbox">Rejected by US</option>
                            
                            <option value="To give Interview Date" class="optionbox">To give Interview Date</option>
                          -->
                            
                        </select>
                </td>

                      <td>
  &nbsp;&nbsp; &nbsp;&nbsp; <select id="selectbasic" name="interest_type" class="selectbox">
        <option >All</option>
 <%
 for( int i=0;i<Namearr5.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr5, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
         
                <td>
                    &nbsp;&nbsp;<a onclick="setandreloadpage()" class="button" style="border-top-left-radius: unset;border-bottom-left-radius: unset;margin-left: -23px;padding: 3px 20px;">Show</a>
                </td>
                
        </tr>
    </tbody></table>
    
                
  
         <table class="table table-bordered" id="detailtbl" style="width:100%">
     <thead>
         <tr>
             <td>
                 Sr.No
             </td>
             <td <%=isremarkstohide%>>
                 ID
               
             </td>
             
             <td>
Customer_name  
             </td>
              <td>
Equpment  
             </td>
              <td>
Machine_type  
             </td>
              <td hidden>
Machine  
             </td>
              <td>
Sold_by  
             </td>
             
             
              
             <td style="width:500px">
                 Entry_Date
             </td>
             
               
              <td>
                 Nature_of_complaint
             </td>
              
              
             <td>
                 Category_of_problem 
                 
             </td>
              <td  hidden>
Complaint_Sub-Category  
             </td>
             <td>
Replace_part 
             </td>
             
              
               
             <td>
                 Assign 
                 
            </td>
             
             
              <td>
                Status  
             </td>
              
               
             <td>
Mechanical             </td>
             
              
             <td>
Refrigeration             </td>
             
              
             <td>
            Electrical     
      
             </td>
             
             
              <td hidden>
Complaint_name             </td>
              <td>
Model_number             </td>
             
             
             <td>
                 followup_date
             </td>
             
             
             <td>
             
Serial_number              
              
             </td>
             
             
             <td colspan="2">
                 <a href="" > Action</a>
             </td>
             
             
             
             <td hidden>
                 Attachment
             </td>
             
             
             
             
         </tr>
     </thead>
     <tbody>
     
         <%
           for(int i=0;i<lead_name.size();i++){
                                String idstr=JVC_JSP_Common.getvaluefromarraylist(id, i);
                                String lead_ownerstr=JVC_JSP_Common.getvaluefromarraylist(lead_owner, i);
                                String lead_datestr=JVC_JSP_Common.getvaluefromarraylist(lead_date, i);

                 String leadnamestr=JVC_JSP_Common.getvaluefromarraylist(lead_name, i);
                 String lead_statusstr=JVC_JSP_Common.getvaluefromarraylist(lead_status, i);
                                  String lead_sourcestr=JVC_JSP_Common.getvaluefromarraylist(lead_source, i);
                 String land_linestr=JVC_JSP_Common.getvaluefromarraylist(land_line, i);
                String  mobile_nostr=JVC_JSP_Common.getvaluefromarraylist( mobile_no, i);
                String emailstr=JVC_JSP_Common.getvaluefromarraylist(email, i);
                String intrest_typestr=JVC_JSP_Common.getvaluefromarraylist(intrest_type, i);
                String tally_serial_numberstr=JVC_JSP_Common.getvaluefromarraylist(tally_serial_number, i);
                String areastr=JVC_JSP_Common.getvaluefromarraylist(area, i);
                String Equepmentstr=JVC_JSP_Common.getvaluefromarraylist(Equepment, i);
                String Sold_bystr=JVC_JSP_Common.getvaluefromarraylist(Sold_by, i);

               String Machine_Typestr=JVC_JSP_Common.getvaluefromarraylist(Machine_Type, i);
               String Category_of_problemstr=JVC_JSP_Common.getvaluefromarraylist(Category_of_problem, i);
               String Replace_partstr=JVC_JSP_Common.getvaluefromarraylist(Replace_part, i);
               String follow_up_datestr=JVC_JSP_Common.getvaluefromarraylist(follow_up_date, i);
              //String typestr=JVC_JSP_Common.getvaluefromarraylist(type, i);
                String color="";
                if(lead_statusstr.equalsIgnoreCase("Open")){
                    color="background:red;color:white";
                }else if(lead_statusstr.equalsIgnoreCase("Closed")){
                    color="background:green;color:white";
                }

                 int srno=i+1;
%>

<tr style="<%=color%>">

      <td>
                 
          <%=srno%><!-- S.N-->
             </td>
           
             <td <%=isremarkstohide%>>
                 <a href="alter?id=<%=idstr%>"> <%=idstr%></a><!-- idddd-->
    </td>
    <td>
        <%=leadnamestr%><!-- Customer_name-->
    </td>
    <td>
        <%=Equepmentstr%>
    </td>
    <td><%=Machine_Typestr%></td>
    <td hidden ></td>
    <td><%=Sold_bystr%></td>
             <td style="width:300px">
          <%=lead_datestr%>
    </td>
        
       
       <td>
        <%=land_linestr%><!-- Nature_of_code-->
    </td>
         <td>
            <%=mobile_nostr%><!-- Cotegory_of_problem--> 
       
    </td>
    <td hidden>
        <%=Category_of_problemstr%><!--Cotegory_of_sub_problem -->
    </td>
    <td>   
        <%=Replace_partstr%><!-- Replace_part-->
</td>
    <td>
        <%=tally_serial_numberstr%><!-- Assign-->
         
    </td>

        <td>
       <%=lead_statusstr%><!-- Status-->
    </td>
       <td>
        <%=areastr%><!-- mechanical-->
    </td>
   <td>
        <%=intrest_typestr%><!-- Refrigeratin-->
    </td>
   
       <td>
            <%=emailstr%><!-- electrical-->
        
    </td>
       <td hidden>
    </td>
        <td>
        <%=lead_sourcestr%><!-- model_number-->
    </td>
       
    <td>
        <%=follow_up_datestr%>
</td>
   
     <td>
                 <%=lead_ownerstr%><!-- lead_owner-->

    </td>
    <td>
        <a href="javascript:window.location.href='/Coplaint_Entry/Complaint_entry_Register?id=<%=idstr%>'" >  Add/View Effort</a><!-- Serial_number-->
    </td>
</tr> 
<%}
             %>
       
     </tbody>
 </table>    
         
     <script>
         function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

          function setandreloadpage(){
              //&entrydate=2019-08-14&entrydate2=2019-08-14
              try{
       var entrydate=document.getElementsByName("entrydate")[0].value;
       var entrydate2=document.getElementsByName("entrydate2")[0].value;
   }catch(Error){
       entrydate='';
       entrydate2='';
   }
       
       var date=document.getElementsByName("lead_status")[0].value;
       date=date.replace("+", "_plus_");
       date=date.replace("&", "_and_");
       
       var interest_type=document.getElementsByName("interest_type")[0].value;
       window.location.href="/WebApplication8/Register?status="+date+"&entrydate="+entrydate+"&entrydate2="+entrydate2+"&interest_type="+interest_type+"&back=display";
        }
        function showfunction2(){
           var entrydate=document.getElementsByName("entrydate")[0].value;
           
           
        var entrydate2=document.getElementsByName("entrydate2")[0].value; 
            
           window.location.href="display?entrydate="+entrydate+"&entrydate2="+entrydate2+"&back=display"; 
        }
        
          function setandreloadpage2(){
       var data=document.getElementsByName("search")[0].value;
       window.location.href="/WebApplication8/Register?search="+data+"&back=display";
        }
        
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
var data = new google.visualization.DataTable();
data.addColumn({ type: 'string', id: 'Status'});
data.addColumn({ type: 'number', id: 'Count'});
data.addColumn({ type: 'string', role: "style"});

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Status Report",
        height: 400,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
//      function selectHandler() {
//    var selectedItem = chart.getSelection()[0];
////    alert(selectedItem.row);
////    alert(selectedItem.column);
//    if (selectedItem) {
//      //var value = data.getValue(selectedItem.row, selectedItem.column);
//      var value = data.get(selectedItem.row, selectedItem.column);
//      //alert('The user selected ' + value);
//    }
//      
//    }
//  // Listen for the 'select' event, and call my function selectHandler() when
//  // the user selects something on the chart.
//  google.visualization.events.addListener(chart, 'select', selectHandler);
      chart.draw(view, options);          
    }
         </script>
     <!--   </from>-->

</body></html>