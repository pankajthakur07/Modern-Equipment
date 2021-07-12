<%@page import="jvc_source_common.JVC_JSP_Common"%>
<%@page import="java.util.ArrayList"%>
<html><head><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!--<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.css" />-->
      
<!--      <script src = "https://code.jquery.com/jquery-1.11.3.min.js"></script>
      <script src = "https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>-->
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <meta name="viewport" content="width=device-width, initial-scale=1">

<style>
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
<title>Report</title><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/loader.js"></script><link id="load-css-0" rel="stylesheet" type="text/css" href="https://www.gstatic.com/charts/47/css/core/tooltip.css"><link id="load-css-1" rel="stylesheet" type="text/css" href="https://www.gstatic.com/charts/47/css/util/util.css"><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/js/jsapi_compiled_format_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/js/jsapi_compiled_default_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/js/jsapi_compiled_ui_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/47/js/jsapi_compiled_corechart_module.js"></script></head>
     
     
 <body>
     <%
       ArrayList Namearr5= (ArrayList)request.getAttribute("lead_name");  
 ArrayList Namearr6= (ArrayList)request.getAttribute("Machine_Type");  
ArrayList Namearr7= (ArrayList)request.getAttribute("lead_status"); 
ArrayList Namearr8= (ArrayList)request.getAttribute("tally_serial_number");  
ArrayList Namearr9= (ArrayList)request.getAttribute("lead_source");  
ArrayList Namearr10= (ArrayList)request.getAttribute("mobile_no");  
ArrayList Namearr13= (ArrayList)request.getAttribute("intrest_type");  
ArrayList Namearr12= (ArrayList)request.getAttribute("area");  
ArrayList Namearr11= (ArrayList)request.getAttribute("email");  
ArrayList Namearr14= (ArrayList)request.getAttribute("Run_Load_HRS");  
ArrayList Namearr15= (ArrayList)request.getAttribute("Replace_part");  
ArrayList Namearr17= (ArrayList)request.getAttribute("lead_owner");  
//ArrayList Namearr16= (ArrayList)request.getAttribute("email");  
       %>
         
   <table>        
        <tbody>
            <tr>
                
                <td>&nbsp; </td>
            </tr>
            <tr>
                 <td>
                <td>
                      <input type="button" class="btn btn-success" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/WebApplication8/Register'"/>
                <a onclick="setandreloadpage2()" class="button "  onclick="javascript:window.location.href=" >Show</a>
            </td>
              
            </td>
            </tr>
            <tr>            
          <td>
      <label>Customer_name</label>
  <select id="selectbasic" name="search" class="search" onchange="setmodelnumber()" style="width:110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr5.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr5, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
     <td>
        <label>Machine_type</label>
   <select id="selectbasic" name="Machine_Type1" class="search" style="width:110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr6.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr6, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 


    </select>
     </td>
       <td>
 <label> Status</label>
  <select id="selectbasic" name="status" class="search" style="width:110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr7.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr7, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
     <td>
     <label>Engineer_name</label>
 <select id="selectbasic" name="Assign" class="search" style="width:110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr8.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr8, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
       <td>
      <label>Model_number</label>
 <select id="selectbasic" name="Model_number" class="search" style="width: 110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr9.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr9, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
       <td>
      <label>Category_of_problem</label>
 <select id="selectbasic" name="Category_of_problem" class="search" style="width: 110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr10.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr10, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
       <td>
         <label>Electrical</label>
   <select id="selectbasic" name="Electrical" class="search" style="width:130px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr11.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr11, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
       <td>
          <label>Mechanical</label>
  <select id="selectbasic" name="Mechanical" class="search" style="width:110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr12.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr12, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
       <td>
        <label> Refrigeration</label>
 <select id="selectbasic" name="Refrigeration" class="search" style="width:110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr13.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr13, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
       <td>
    <label>Replace</label>
  <select id="selectbasic" name="Replace" class="search" style="width: 110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr14.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr14, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
      
       <td>
        <label> Replace_part</label>
  <select id="selectbasic" name="Replace_part" class="search" style="width: 110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr15.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr15, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
       <td>
        <label> Serial_number</label>
  <select id="selectbasic" name="Serial_number" class="search" style="width: 110px">
        <option value=" ">All</option>
 <%
 for( int i=0;i<Namearr17.size();i++) {
     String namsetsr=JVC_JSP_Common.getvaluefromarraylist(Namearr17, i);
 
 %>
 <option value="<%=namsetsr%>" class="optionbox"> <%=namsetsr%></option>
     <%}%>
 </select>
     </td>
     
           
           
             
        </tr>
         <td hidden>
                <input type="text" name="search" placeholder="Search.." class="search">
            </td>
    </tbody></table>
   
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
       
       var lead_interest_type=document.getElementsByName("lead_interest_type")[0].value;
       window.location.href="display?status="+date+"&entrydate="+entrydate+"&entrydate2="+entrydate2+"&interest_type="+lead_interest_type+"&back=display";
        }
        function showfunction2(){
           var entrydate=document.getElementsByName("entrydate")[0].value;
           var entrydate2=document.getElementsByName("entrydate2")[0].value; 
            
           wdateindow.location.href="display?entrydate="+entrydate+"&entrydate2="+entrydate2+"&back=display"; 
        }
        
          function setandreloadpage2(){
       var search=document.getElementsByName("search")[0].value;
       var Machine_Type1=document.getElementsByName("Machine_Type1")[0].value;
       var status=document.getElementsByName("status")[0].value;//////////lead_Status/////
       var Assign=document.getElementsByName("Assign")[0].value;////assign////////////
       var Model_number=document.getElementsByName("Model_number")[0].value;//////////lead_sourse////////////
        var Category_of_problem=document.getElementsByName("Category_of_problem")[0].value;/////mobile_no.///////
       var Electrical=document.getElementsByName("Electrical")[0].value;//////////////email/////////
        var Mechanical=document.getElementsByName("Mechanical")[0].value;////////////area
       var Refrigeration=document.getElementsByName("Refrigeration")[0].value;///////////intrest_type////
        var Replace=document.getElementsByName("Replace")[0].value;/////////////////run_load_hrs///
        var Replace_part=document.getElementsByName("Replace_part")[0].value;////////////////////Replace_part
       var Serial_number=document.getElementsByName("Serial_number")[0].value;///////////////////////////lead_owner////
       /// var Model_number=document.getElementsByName("Model_number")[0].value;
      /// var followup_date=document.getElementsByName("followup_date")[0].value;
       // var Serial_number=document.getElementsByName("Serial_number")[0].value;
 window.location.href="/Report/Search_customer_name?search="+search+"&Machine_Type1="+Machine_Type1+"&status="+status+"&Assign="+Assign+"&Model_number="+Model_number+"&Category_of_problem="+Category_of_problem+"&Electrical="+Electrical+"&Mechanical="+Mechanical+"&Refrigeration="+Refrigeration+"&Replace="+Replace+"&Replace_part="+Replace_part+"&Serial_number="+Serial_number+" ";
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
      chart.draw(view, options);          
    }
    
    
    
         function setmodelnumber(){
   document.getElementsByName("Machine_Type1")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("status")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Assign")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Model_number")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Category_of_problem")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Electrical")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Mechanical")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Refrigeration")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Replace")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Replace_part")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;
  document.getElementsByName("Serial_number")[0].selectedIndex=document.getElementsByName("search")[0].selectedIndex;

         }
        
    
    
    
    
         </script>
    

</body></html>
