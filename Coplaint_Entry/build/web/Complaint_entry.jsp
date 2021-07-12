                
            <html>
 <head>

<%
    String id=request.getAttribute("id").toString();
     String type=request.getAttribute("type").toString();
   String isremarkstohide=request.getAttribute("isremarkstohide").toString();
                  String curr_username=request.getAttribute("curr_username").toString();
        %>


 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>
Complaint_by_Enginner</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head >
 <body >
     <div hidden><%=type%>
  <%=curr_username%>
  </div>


 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
</script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
</script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
</script>
<form class="form-horizontal" id="myform" action="Complaint_entry_save" method="post" enctype="multipart/form-data">
 <div hidden>Entering Effort For Id=<%=id%></div>
    <fieldset >
  <!--Form Name -->
 
 <legend >Complaint_by_Enginner</legend >
<!--Text input-->


 <div class="form-group" >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Complaint Analysis By Enginner</label >
     <div class="col-md-4" >
   <input id="textinput" name="CABE" type="text" placeholder="Complaint Analysis By Enginner" class="form-control input-md"  >
        </div >
 </div >
 <div class="form-group" hidden>
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Ref.Id</label >
     <div class="col-md-4" >
     <input id="textinput"  type="text"  class="form-control input-md" value="<%=id%>" name="ref_id">

        </div >
 </div >
 <!--Text input-->
 <div class="form-group" hidden>
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Replace time</label >
     <div class="col-md-4" >
  <input id="textinput" name="time" type="time" placeholder="Replace time" class="form-control input-md" >
        </div >
        
 </div ><!--Text input-->
<!--Text input-->
 <div class="form-group" >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Report No.</label >
     <div class="col-md-4" >
   <input id="textinput" name="lead_status" type="text" placeholder="Report No." class="form-control input-md" >
        </div >
 </div ><!--Text input-->
 <div class="form-group" >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Coplaint Close Hrs</label >
     <div class="col-md-4" >
<input id="textinput" name="entrytim" type="time" placeholder="Replace time" class="form-control input-md" >        </div >
 </div ><!--Text input-->
 <!--Text input-->
                             <div class="form-group" >
                            <label class="col-md-4 control-label" for="textinput" hidden>Dummy</label >
                           <div class="col-md-4" >
                                  <input id="textinput" name="myFile" type="file"  class="form-control input-md" hidden>
                                      </div >
                                            </div >
 <!-- Button -->
  <div class="form-group" >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Work Done</label >
     <div class="col-md-4" >
         <input  type="text" id="textinput" name="Work_done" type="text"  class="form-control input-md" >
        </div >
 </div >
 <div class="form-group" >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Run_Load_HRS</label >
     <div class="col-md-4" >
         <input  type="text" id="textinput" name="rlh2" type="text"  class="form-control input-md" >
        </div >
 </div >
  <div class="form-group">
   <div class="col-md-4">
       
       <div class="form-group" hidden>
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Work Done</label >
     <div class="col-md-4" >
         <select style="width: 200px " name="">
             <option> </option>
             <option>Yes</option>
              <option>No</option>

         </select>
        </div >
 </div >

 
 
 
 
 <div class="form-group" >
   


     <label class="col-md-12 control-label" for="textinput" ><a onclick="myFunction()" style="font-size: 22px;font-weight: bold">Replace</a><a onclick="myFunction2()" style="font-size: 22px;font-weight: bold">  Part</a></label >
   
   <div id="panel">
     <div class="col-md-12">
  <!-- <input id="textinput" name="Replace_Part" type="text" placeholder="Replace Part" class="form-control input-md" >-->
  
 
  <table>
      <tr>
          <td style="width:400px">
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-0">
<input type="checkbox" value="Senser"  name="Replace_part">
      Senser
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-1">
<input type="checkbox" value="MCS"  name="Replace_part">
      MCS
    </label>
	</div>
      <div class="checkbox" name="entrytimdiv" >
    <label for="checkboxes-2">
<input type="checkbox" value="MCSIO"  name="Replace_part">
      MCSIO
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-3">
<input type="checkbox" value="Contector"  name="Replace_part">
      Contector
    </label>
	</div>
      <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-4">
<input type="checkbox" value="  Connection"  name="Replace_part">
      Connection
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-5">
<input type="checkbox" value="ETM"  name="Replace_part">
      ETM
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-6">
<input type="checkbox" value=" Main Motor"  name="Replace_part">
      Main Motor
    </label>
	</div>
 <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-7">
<input type="checkbox" value="Fan Motor"  name="Replace_part">
      Fan Motor
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-8">
<input type="checkbox" value="Power LOGO" name="Replace_part">
      Power LOGO
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-9">
<input type="checkbox" value="SFC Control Unit"  name="Replace_part">
      SFC Control Unit
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-10">
<input type="checkbox" value="SFC Power Unit"  name="Replace_part">
      SFC Power Unit
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-11">
<input type="checkbox" value="Sigma Controller"  name="Replace_part">
      Sigma Controller
    </label>
	</div>
              <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-0">
<input type="checkbox" value="Eco Drain"  name="Replace_part">
      Eco Drain
    </label>
	</div>
          </td>
          <td  style="width:400px">
  
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-1">
<input type="checkbox" value="Air filter"  name="Replace_part">
      Air filter
    </label>
	</div>
              
      <div class="checkbox" name="entrytimdiv" >
    <label for="checkboxes-2">
<input type="checkbox" value="Oil Filter"  name="Replace_part">
      Oil Filter
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-3">
<input type="checkbox" value="Oil Sepretor"  name="Replace_part">
      Oil Sepretor
    </label>
	</div>
      <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-4">
<input type="checkbox" value="  Oil"  name="Replace_part">
      Oil
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-5">
<input type="checkbox" value="Con. Valve"  name="Replace_part">
      Con. Valve
    </label>
	</div>
      
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-6">
<input type="checkbox" value=" Inlet Valve"  name="Replace_part">
      Inlet Valve
    </label>
	</div>
 <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-7">
<input type="checkbox" value="MPCV"  name="Replace_part">
      MPCV
    </label>
	</div>
             
              
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-8">
<input type="checkbox" value="VC" name="Replace_part">
      VC
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-9">
<input type="checkbox" value="CAVV"  name="Replace_part">
      CAVV
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-10">
<input type="checkbox" value="Leakage"  name="Replace_part">
    Leakage
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-11">
<input type="checkbox" value="Eco Drain"  name="Replace_part">
      Eco Drain
    </label>
	</div>
             <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-0">
<input type="checkbox" value="Abnormal Noise"  name="Replace_part">
      Abnormal Noise
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-1">
<input type="checkbox" value="Air-End"  name="Replace_part">
      Air-End
    </label>
	</div> 
          </td> 
          
          <td  style="width:400px">   
  
                  
      <div class="checkbox" name="entrytimdiv" >
    <label for="checkboxes-2">
<input type="checkbox" value="Cooler"  name="Replace_part">
      Cooler
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-3">
<input type="checkbox" value="Hote Gas Valve"  name="Replace_part">
      Hote Gas Valve
    </label>
	</div>
      <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-4">
<input type="checkbox" value="  Expensan Valve"  name="Replace_part">
      Expensan Valve
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-5">
<input type="checkbox" value="HP Swich"  name="Replace_part">
      HP Swich
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-6">
<input type="checkbox" value="LP Swich"  name="Replace_part">
      LP Swich
    </label>
	</div>
 <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-7">
<input type="checkbox" value="Controller"  name="Replace_part">
      Controller
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-8">
<input type="checkbox" value="Service" name="Replace_part">
      Service
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-9">
<input type="checkbox" value="Eco Drain"  name="Replace_part">
      Eco Drain
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-10">
<input type="checkbox" value="Ref. Compressor"  name="Replace_part">
      Ref. Compressor
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-11">
<input type="checkbox" value="Gas Leakage"  name="Replace_part">
      Gas Leakage
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-0">
<input type="checkbox" value="Condenser"  name="Replace_part">
      Condenser
    </label>
	</div>
  <div class="checkbox" name="entrytimdiv">
    <label for="checkboxes-1">
<input type="checkbox" value="Service"  name="Replace_part">
      Service
    </label>
	</div>
              
              
              
              
  </td>
      </tr>
      
     </table>
     </div>

        </div >
        </div>
   </div>
 </div>
<table>
     <tr>
         <td>
   <div class="form-group " >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px; margin-right: 0px">Replace</label >
   
   </td>
 </tr>
 <tr>
     <td >
     <div class="col-md-4" >
  <!-- <input id="textinput" name="Run/Load_HRS" type="text" placeholder="Run/Load HRS" class="form-control input-md" >-->
  <select style="width: 475px;padding: 6px; font-size: 20px" name="Run_Load_HRS">
      <option> </option>
      <option>Warranty</option>
      <option>No Warranty</option>
  </select>
        </div >
 </div >
 </td>
 </tr>
 </table>
 <div class="form-group" >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Follow_up_date</label >
     <div class="col-md-4" >
  <input id="textinput" name="follow_up_date" type="date" placeholder="Replace time" class="form-control input-md" >
        </div >
        
 </div >
  <div class="form-group" >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Attachment</label >
     <div class="col-md-3" >
         <input  type="file"id="textinput" name="lead_att" class="form-control input-md" style="border:none" >
        </div >
 </div >
     <div class="form-group" <%=isremarkstohide%> >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px">Remarks</label >
     <div class="col-md-4" >
         <textarea id="textinput" name="lead_notes" type="text" placeholder="Remarks" class="form-control input-md" ></textarea>
        </div >
 </div >
 <table>
   <tr >
         <td>
   <div class="form-group " >
   <label class="col-md-4 control-label" for="textinput" style="font-size: 20px; margin-right: 0px">Status</label >
   
   </td>
 </tr>
 <tr>
     <td >
     <div class="col-md-4" >
  <!-- <input id="textinput" name="Run/Load_HRS" type="text" placeholder="Run/Load HRS" class="form-control input-md" >-->
  <select style="width: 475px;padding: 6px; font-size: 20px" name="wa_status">
      <option> </option>
      <option>Open</option>
      <option>Closed</option>
  </select>
        </div >
 </div >
 </td>
 </tr>
 <tr>
     <td>&nbsp;</td>
 </tr>
     </table>
       <button id="singlebutton" name="" class="btn btn-primary">Save</button>
<input type="button" class="btn btn-success" value="Back" name="btn" size="20" onclick="javascript:window.location.href='/Coplaint_Entry/Complaint_entry_Register?id=<%=id%>'"/>
   
   
   
 </fieldset >

 </form >
<script>
function myFunction() {
document.getElementsByName("entrytimdiv")[0].hidden  = true;
document.getElementsByName("entrytimdiv")[1].hidden  = true;
document.getElementsByName("entrytimdiv")[2].hidden  = true;
document.getElementsByName("entrytimdiv")[3].hidden  = true;
document.getElementsByName("entrytimdiv")[4].hidden  = true;
document.getElementsByName("entrytimdiv")[5].hidden  = true;
document.getElementsByName("entrytimdiv")[6].hidden  = true;
document.getElementsByName("entrytimdiv")[7].hidden  = true;
document.getElementsByName("entrytimdiv")[8].hidden  = true;
document.getElementsByName("entrytimdiv")[9].hidden  = true;
document.getElementsByName("entrytimdiv")[10].hidden  = true;
document.getElementsByName("entrytimdiv")[11].hidden  = true;
document.getElementsByName("entrytimdiv")[12].hidden  = true;
document.getElementsByName("entrytimdiv")[13].hidden  = true;
document.getElementsByName("entrytimdiv")[14].hidden  = true;
document.getElementsByName("entrytimdiv")[15].hidden  = true;
document.getElementsByName("entrytimdiv")[16].hidden  = true;
document.getElementsByName("entrytimdiv")[17].hidden  = true;
document.getElementsByName("entrytimdiv")[18].hidden  = true;
document.getElementsByName("entrytimdiv")[19].hidden  = true;
document.getElementsByName("entrytimdiv")[20].hidden  = true;
document.getElementsByName("entrytimdiv")[21].hidden  = true;
document.getElementsByName("entrytimdiv")[22].hidden  = true;
document.getElementsByName("entrytimdiv")[23].hidden  = true;
document.getElementsByName("entrytimdiv")[24].hidden  = true;
document.getElementsByName("entrytimdiv")[25].hidden  = true;
document.getElementsByName("entrytimdiv")[26].hidden  = true;
document.getElementsByName("entrytimdiv")[27].hidden  = true;
document.getElementsByName("entrytimdiv")[28].hidden  = true;
document.getElementsByName("entrytimdiv")[29].hidden  = true;
document.getElementsByName("entrytimdiv")[30].hidden  = true;
document.getElementsByName("entrytimdiv")[31].hidden  = true;
document.getElementsByName("entrytimdiv")[32].hidden  = true;
document.getElementsByName("entrytimdiv")[33].hidden  = true;
document.getElementsByName("entrytimdiv")[34].hidden  = true;
document.getElementsByName("entrytimdiv")[35].hidden  = true;
document.getElementsByName("entrytimdiv")[36].hidden  = true;
document.getElementsByName("entrytimdiv")[37].hidden  = true;


}
function myFunction2() {
 document.getElementsByName("entrytimdiv")[0].hidden = false;
 document.getElementsByName("entrytimdiv")[1].hidden  = false;
document.getElementsByName("entrytimdiv")[2].hidden  = false;
document.getElementsByName("entrytimdiv")[3].hidden  = false;
document.getElementsByName("entrytimdiv")[4].hidden  = false;
document.getElementsByName("entrytimdiv")[5].hidden  = false;
document.getElementsByName("entrytimdiv")[6].hidden  = false;
document.getElementsByName("entrytimdiv")[7].hidden  = false;
document.getElementsByName("entrytimdiv")[8].hidden  = false;
document.getElementsByName("entrytimdiv")[9].hidden  = false;
document.getElementsByName("entrytimdiv")[10].hidden  = false;
document.getElementsByName("entrytimdiv")[11].hidden  = false;
document.getElementsByName("entrytimdiv")[12].hidden  = false;
document.getElementsByName("entrytimdiv")[13].hidden  = false;
document.getElementsByName("entrytimdiv")[14].hidden  = false;
document.getElementsByName("entrytimdiv")[15].hidden  = false;
document.getElementsByName("entrytimdiv")[16].hidden  = false;
document.getElementsByName("entrytimdiv")[17].hidden  = false;
document.getElementsByName("entrytimdiv")[18].hidden  = false;
document.getElementsByName("entrytimdiv")[19].hidden  = false;
document.getElementsByName("entrytimdiv")[20].hidden  = false;
document.getElementsByName("entrytimdiv")[21].hidden  = false;
document.getElementsByName("entrytimdiv")[22].hidden  = false;
document.getElementsByName("entrytimdiv")[23].hidden  = false;
document.getElementsByName("entrytimdiv")[24].hidden  = false;
document.getElementsByName("entrytimdiv")[25].hidden  = false;
document.getElementsByName("entrytimdiv")[26].hidden  = false;
document.getElementsByName("entrytimdiv")[27].hidden  = false;
document.getElementsByName("entrytimdiv")[28].hidden  = false;
document.getElementsByName("entrytimdiv")[29].hidden  = false;
document.getElementsByName("entrytimdiv")[30].hidden  = false;
document.getElementsByName("entrytimdiv")[31].hidden  = false;
document.getElementsByName("entrytimdiv")[32].hidden  = false;
document.getElementsByName("entrytimdiv")[33].hidden  = false;
document.getElementsByName("entrytimdiv")[34].hidden  = false;
document.getElementsByName("entrytimdiv")[35].hidden  = false;
document.getElementsByName("entrytimdiv")[36].hidden  = false;
document.getElementsByName("entrytimdiv")[37].hidden  = false;
}
</script>
 </body >
 </html >