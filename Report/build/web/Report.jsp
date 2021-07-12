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
                         ArrayList lead_name=(ArrayList) request.getAttribute("lead_name");
                   ArrayList id=(ArrayList) request.getAttribute("id");
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
                  ///////////////////////////////////////////////////////////////lead_effort//////////////////////////////
        ArrayList lead_att=(ArrayList) request.getAttribute("lead_att");
         ArrayList lead_notes=(ArrayList) request.getAttribute("lead_notes");
         ArrayList ref_id=(ArrayList) request.getAttribute("ref_id");
         ArrayList time=(ArrayList) request.getAttribute("time");
         ArrayList entrytim=(ArrayList) request.getAttribute("entrytim");
         ArrayList wa_status=(ArrayList) request.getAttribute("wa_status");
         ArrayList Work_done=(ArrayList) request.getAttribute("Work_done");
                  ArrayList Run_Load_HRS=(ArrayList) request.getAttribute("Run_Load_HRS");
                  ArrayList rlh2=(ArrayList) request.getAttribute("rlh2");
                  ArrayList CABE=(ArrayList) request.getAttribute("CABE");
                //  ArrayList Category_of_problem=(ArrayList) request.getAttribute("Category_of_problem");
                //  ArrayList Replace_part=(ArrayList) request.getAttribute("Replace_part");
                
                //  ArrayList follow_up_date=(ArrayList) request.getAttribute("follow_up_date");
         %>
         
   <table>        
        <tbody>
            <button onclick="exportTableToExcel('tblData', 'members-data')" hidden>Export Table Data To Excel File</button>
<button onclick="exportTableToExcel('tblData')" hidden>Export Table Data To Excel File</button>
            <input type="button" class="btn btn-success" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/Report/Report'"/>
            <input type="button" class="btn btn-success" value="Export Table Data To Excel File" name="btn" size="20" onclick="exportTableToExcel('tblData')">
            <tr>
                <td>&nbsp; </td>
            </tr>
            <tr hidden>            
           
            <td>
                <input type="text" name="search" placeholder="Search.." class="search" id="detailtbl1">
            </td>
            <td>
                <a onclick="setandreloadpage2()" class="button " style="border-top-left-radius: unset;border-bottom-left-radius: unset; margin-left: -10px;" onclick="javascript:window.location.href=" >Search</a>
            </td>
             
        </tr>
    </tbody></table>
   </div><br> 
      
  
         <table class="table table-bordered"  style="width:100%" id="tblData">
     <thead>
           <tr>
           
             <td >
                 ID
               
             </td>
             <td >
                 Customer_name
               
             </td>
             
           
              <td>
Equpment  
             </td>
              <td>
Machine_type  
             </td>
          
              <td>
Sold_by  
             </td>
             
             
              
             <td >
                 Entry_Date
             </td>
             
               
              <td>
                 Nature_of_complaint
             </td>
              
              
             <td>
                 Category_of_problem 
                 
             </td>
             
             <td>
Replace_part 
             </td>
             
              
               
             <td>
                 Assign 
                 
            </td>
             
             
          
              
               
             <td>
Mechanical             </td>
             
              
             <td>
Refrigeration             </td>
             
              
             <td>
            Electrical     
      
             </td>
             
             
            
              <td>
Model_number             </td>
             
             
             <td>
                 followup_date
             </td>
             
             
             <td>
             
Serial_number              
              
             </td>
             <td>
             
Attachment              
              
             </td>
             <td>
             
Remarks              
              
             </td>
             <td>
             
Report_No              
              
             </td>
            
             <td>
             
Coplaint_Close_Hrs              
              
             </td>
            
             <td>
             
Work_Done              
              
             </td>
             <td>
             
Replace              
              
             </td>
             <td>
             
Run/Load/hrs              
              
             </td>
             <td>
             
Complaint_Analysis_By_Enginner             
              
             </td>
             
             
             
           
          </tr>
    
     </thead>
   

     <tbody>
         <%
              
           for(int i=0;i<lead_name.size();i++){
               String lead_namestr=JVC_JSP_Common.getvaluefromarraylist(lead_name, i);
                               String idstr=JVC_JSP_Common.getvaluefromarraylist(id, i);
                                String lead_ownerstr=JVC_JSP_Common.getvaluefromarraylist(lead_owner, i);
                                String lead_datestr=JVC_JSP_Common.getvaluefromarraylist(lead_date, i);

                 String lead_statusstr=JVC_JSP_Common.getvaluefromarraylist(lead_status, i);
                                  String lead_sourcestr=JVC_JSP_Common.getvaluefromarraylist(lead_source, i);
               
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
               /////////////////////////////////////lead_effort////////////////////////////////////
                 String lead_attstr=JVC_JSP_Common.getvaluefromarraylist(lead_att, i);
                String lead_notesstr=JVC_JSP_Common.getvaluefromarraylist(lead_notes, i);
                String ref_idstr=JVC_JSP_Common.getvaluefromarraylist(ref_id, i);
                String timestr=JVC_JSP_Common.getvaluefromarraylist(time, i);
                String entrytimstr=JVC_JSP_Common.getvaluefromarraylist(entrytim, i);
              
               
               String Work_donestr=JVC_JSP_Common.getvaluefromarraylist(Work_done, i);
               String Run_Loadstr_HRSstr=JVC_JSP_Common.getvaluefromarraylist(Run_Load_HRS, i);
               String rlh2str=JVC_JSP_Common.getvaluefromarraylist(rlh2, i);
               String CABEstr=JVC_JSP_Common.getvaluefromarraylist(CABE, i);
              
                 %>
          
                 <tr>
                
                   
                     <td>  <%= idstr%></td><!--Customer_name-->
                     <td>  <%= lead_namestr%></td><!--Customer_name-->
                     <td>  <%= Equepmentstr%></td><!--Equepment-->
                        <td>  <%= Machine_Typestr%></td><!--Machine_type-->
                            <td>  <%= Sold_bystr%></td><!--Sold_by-->
                             <td>  <%= lead_datestr%></td><!--Entry_date-->
                    
                    
                     <td>  <%= lead_statusstr%></td><!--Nature_of_complaint-->
                       <td>  <%= mobile_nostr%></td><!--Category_of_problem-->
                          <td>  <%= Replace_partstr%></td><!--Replace_part-->
                            <td>  <%= tally_serial_numberstr%></td><!--Assign_Engineer_name-->
                           
                                <td>  <%= areastr%></td><!--Mechanical-->
                                 <td>  <%= intrest_typestr%></td><!--Refrigeration-->
                                  <td>  <%= emailstr%></td><!--Electrical-->
                      <td>  <%= lead_sourcestr%></td><!--Model_number-->
                       <td>  <%= follow_up_datestr%></td><!--followup_date-->
                      <td >  <%= lead_ownerstr%></td><!--serial_number-->
<td> <a href="Download?id=<%=idstr %>" ><%=lead_attstr %></a></td><!--Attachment-->
                          <td>  <%= lead_notesstr%></td><!--Remarks-->
                            <td>  <%= ref_idstr%></td><!--Report_No-->
                            <!--Replace_time-->
                                <td>  <%= entrytimstr%></td><!--Coplaint_Close_Hrs-->
                               
                                  <td>  <%= Work_donestr%></td><!--Work_Done-->
                      <td>  <%= Run_Loadstr_HRSstr%></td><!--Replace-->
                       <td>  <%= rlh2str%></td><!--Run/Load/hrs-->
                      <td >  <%= CABEstr%></td><!--Complaint_Analysis_By_Enginner-->
                    
         
                   </tr>
                 <%
                     }
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
       
       var lead_interest_type=document.getElementsByName("lead_interest_type")[0].value;
       window.location.href="display?status="+date+"&entrydate="+entrydate+"&entrydate2="+entrydate2+"&interest_type="+lead_interest_type+"&back=display";
        }
        function showfunction2(){
           var entrydate=document.getElementsByName("entrydate")[0].value;
           var entrydate2=document.getElementsByName("entrydate2")[0].value; 
            
           wdateindow.location.href="display?entrydate="+entrydate+"&entrydate2="+entrydate2+"&back=display"; 
        }
        
          function setandreloadpage2(){
       var data=document.getElementsByName("search")[0].value;
       window.location.href="/Report/Search_customer_name?search="+data+" ";
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
         </script>
         <script>
function exportTableToExcel(tableID, filename = ''){
    var downloadLink;
    var dataType = 'application/vnd.ms-excel';
    var tableSelect = document.getElementById(tableID);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
    // Specify file name
    filename = filename?filename+'.xls':'excel_data.xls';
    
    // Create download link element
    downloadLink = document.createElement("a");
    
    document.body.appendChild(downloadLink);
    
    if(navigator.msSaveOrOpenBlob){
        var blob = new Blob(['\ufeff', tableHTML], {
            type: dataType
        });
        navigator.msSaveOrOpenBlob( blob, filename);
    }else{
        // Create a link to the file
        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
        // Setting the file name
        downloadLink.download = filename;
        
        //triggering the function
        downloadLink.click();
    }
}
</script>
         
    

</body></html>