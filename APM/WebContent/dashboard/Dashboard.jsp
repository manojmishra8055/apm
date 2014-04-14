<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.apm.common.utils.DateTimeUtils"%>
<%@page import="java.util.Date"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <title>Dashboard APM</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link href="dashboard/css/dailog.css" rel="stylesheet" type="text/css" />
    <link href="dashboard/css/calendar.css" rel="stylesheet" type="text/css" /> 
    <link href="dashboard/css/dp.css" rel="stylesheet" type="text/css" />   
    <link href="dashboard/css/alert.css" rel="stylesheet" type="text/css" /> 
    <link href="dashboard/css/main.css" rel="stylesheet" type="text/css" /> 
     <link rel="icon" href="dashboard/images/icon.ico">

  
</head>
<body>
    <div>

      <div id="calhead" style="padding-left:1px;padding-right:1px;">          
            <div class="cHead"><div class="ftitle">Appointment DashBoard</div>
            <div id="loadingpannel" class="ptogtitle loadicon" style="display: none;">Loading data...</div>
            </div>          
            
            <div id="caltoolbar" class="ctoolbar">
            	
            		<table width="100%" cellpadding="0" cellspacing="0">
            			<col width="75%"/>
            			<col width="50%"/>
            			<tr>
            				<td>
            					 <div id="faddbtn" class="fbutton">
				                	<div>
				                		<span title='Click to Create New Event' class="addcal">
											<a href="#" onclick="showdiv()">Block</a>         
				                		</span>
				                	</div>
				           		 </div>
				           		 
				           		  <%String currentDate = DateTimeUtils.getDateinSimpleFormate(new Date());
										String temp[] = currentDate.split(" ");
										String temp1[] = temp[0].split("-");
										String date = temp1[0] + "/" + temp1[1] + "/" + temp1[2];
										
									%>
								<div class="btnseparator"></div>
             					<div  id="showmonthbtn" class="fbutton">
                					<div>
                						<span  class=""> 
                							<input style="height: 12px; padding: 3px" id="commencing" class="date-pick dp-applied" type="text" value="<%=date %>" name="commencing"></input>
                						</span>
                					</div>
                				</div>
                				<div class="btnseparator"></div>
             					<div  id="showmonthbtn" class="fbutton">
                					<div>
                						<span  class="">
                							Dairy User:<s:if test="%{#userList != 'null'}" >
				 											<s:select cssStyle="height: 20px;
																padding: 0px" id="diaryUser" name="diaryUser" list="userList" listKey="id" listValue="diaryUser" headerKey="0" theme="simple" headerValue="All"  onchange="setAppointmentAction(this.value)" />
														</s:if>
										</span>
									</div>
								</div>
								  <div class="btnseparator"></div>
            	 					<div  id="showmonthbtn" class="fbutton">
            	 						<div>
            	 							<span  class="">
            	 								<input id="gobtnid" type="submit" onclick="getSearch()" class="gosmall" value = "Go" style="margin-top: 0px; padding: 1px;"/>	
               								</span>
               							</div>
									</div>
									<div class="btnseparator"></div>
            	 						<div  id="showmonthbtn" class="fbutton">
            	 							<div>
            	 								<span  class="">
              										<s:submit id="printcomdashboard" value=" Preview " onclick="getWeekPrintData()" theme="simple" cssClass="buttons" style="margin-top: -1px; padding: 2px;"></s:submit>						
                								</span>
                							</div>
                						</div>
                			</td>
            				
            				<td align="right">
            					<div id="showtodaybtn" class="fbutton">
                					<div>
                						<span title='Click to back to today ' class="showtoday">
                							Today
                						 </span>
                					 </div>
           	 					 </div>
           	 					 
           	 					 <div class="btnseparator"></div>
								 <div id="showdaybtn" class="fbutton">
                					<div>
                						<a href="dayNotAvailableSlot"><span title='Day' class="showdayview">Day</span></a>
                					</div>
            					</div>
           	 					 <div class="btnseparator"></div>
								 <div id="showdaybtn" class="fbutton">
                					<div>
                						<span title='Week' class="showweekview"><a href="NotAvailableSlot">Week</a></span>
                					</div>
            					</div>
            					 <div class="btnseparator"></div>
								 <div id="showdaybtn" class="fbutton">
                					<div>
                						<span title='Month' class="showmonthview">Month</span>
                					</div>
            					</div>
            				</td>
            			</tr>
            		</table>
         
          
      		
            
            
            <s:form action="NotAvailableSlot" id="weekfrom">
            	<input type="hidden" name="selectedCommencing" id="selectedCommencing"/>
            	<input type="hidden" name="selecteduserid" id="selecteduserid" />
            </s:form>
            <s:form action="allUserNotAvailableSlot" id="alluserfrm">
            	<input type="hidden" name="selectedCommencing" id="selectedCommencing"/>
            	<input type="hidden" name="selecteduserid" id="selecteduserid" />
            </s:form>
            
            <script>
            	
            	window.onload = function(){
            		var selecteduser = document.getElementById('diaryUser').value;
            		if(selecteduser == 0){
            			document.getElementById('gobtnid').onclick = function() {
            				showAvailiability();
            			}
            			document.getElementById('printcomdashboard').onclick = function(){
            				getPrintDataOfAll();
            			}
            		}else{
            			document.getElementById('gobtnid').onclick = function() {
            				getSearch();
            			}
            			document.getElementById('printcomdashboard').onclick = function(){
            				getWeekPrintData();
            			}
            		}
            	}
            
            	function setAppointmentAction(val){
            		if(val == 0){
            			document.getElementById('selecteduserid').value = val;
            			document.getElementById('alluserfrm').submit(); 
            			 
            			        		
            		}else{
            			document.getElementById('selecteduserid').value = val;
            			document.getElementById('weekfrom').submit();       
            		}
            	}
            	</script>
            
            </div>
            
           <div class="clear"></div>
            </div>
      </div>    
    
    
    
    
    
    
    
    
    
    
    
    
    
      
     

    
</body>
</html>
