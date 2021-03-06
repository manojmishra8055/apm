<%@taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript" src="registration/js/userprofile.js"></script>
<script type="text/javascript" src="jscolor/jscolor.js"></script>

<link href="registration/css/tabStyle.css" rel="stylesheet"/>
<div class="main_layout_content">
	
	<div id="contact_details" class="block_div"> 

	<h2 class="heading" >Add User Profile</h2>
	<span id="mandatory_message" class="error">Note:Fields marked with asterisk(*) are required.</span> 
	<span class="error"><s:actionerror id="server_side_error"/></span>
	<div id="tab-container">  
   		<ul class="tab-menu">  
        <li id="userDetails" class="active" onclick = "displayUserDetailsTab()">User Details</li>  
      	<li id="userSetup" onclick="displayUserSetupTab()">User Setup</li>
        <li id="loginDetails" onclick="displayLoginDetailsTab()">Login Details</li>  
        <li id="preferences" onclick = "displayPreferenceTab()">Preferences</li>  
          
    </ul>  
    <div class="clear"></div>  
    <div class="tab-top-border"></div>
		<s:form action="saveUserProfile" id="userprofile_form" theme="simple" validate="True">
		<div id="userDetails-tab" class="tab-content active">
			    <table width="100%" class = "boxclientthirdpartycharge" style="font-size: 12px">
				<col width="30%"/>
				<col width="30%"/>
								
								
								
								<tr>
									
									<td style="font-weight: bold;">First Name<span class="reqd-info">*</span></td>
									<td><s:textfield name="firstname" id="firstname" ></s:textfield> </td>
									
									
								
								</tr>
								
								<tr>
									
									<td style="font-weight: bold;">Last Name<span class="reqd-info">*</span></td>
									<td><s:textfield name="lastname" id="lastname" ></s:textfield> </td>
									
									
								
								</tr>
								
								<tr> 
									<td style="font-weight: bold;">Initial<span class="reqd-info">*</span></td>
										
									<td>
									
									<s:select id="initial" name="initial" list="initialList" headerKey="0" headerValue="Select Title" 
		   					 title="Select"  />	
									</td>
									
								
								</tr>
								
								<tr> 
									<td style="font-weight: bold;">Job Title<span class="reqd-info">*</span></td>
										
									<td>
										<s:select id="jobtitle" name="jobtitle" list="jobTitleList" headerKey="0" headerValue="Select Job Title" 
		   					 title="Select" onchange="showOtherJobTitle()"/>	
		   					
		   					
		   					<div id="jobTitle_other" style="display:none;"><s:textfield id = "otherJobTitle" name = "otherJobTitle"  onchange="addOtherJobTitle(this.value)"/>
							</div>
							</td>
									
								
								</tr>
								
								<tr> 
									<td style="font-weight: bold;">Discipline</td>
										
									<td>
										
										
										<s:select name="diciplineName" list="diciplineList" id="diciplineName" >
											
										</s:select>
									
									</td>
								
								</tr>
								<tr>
									<td colspan="6" align="center">
										<input type="button" value="Next" class="buttons" onclick="showUserSetupTab()">
									</td>
									
									
								</tr>
								
					</table>
					
								
			</div>
			<div id="userSetup-tab" class="tab-content">
			    <table width="100%" class = "boxclientthirdpartycharge" style="font-size: 12px">
				<col width="30%"/>
				<col width="30%"/>
								
								
								
								<tr> 
									<td style="font-weight: bold;">This User</td>
										
									<td>
										<s:checkbox id="usercheck" name="usercheck">is a practitioner</s:checkbox>
									</td>
									
								
								</tr>
								
								<tr> 
									<td style="font-weight: bold;"></td>
										
									<td>
										<s:checkbox id="appointmentdiary" name="appointmentdiary" >has an Appointment Diary</s:checkbox>
									</td>
								
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">Diary Color</td>
										
									<!--<td>
										 <s:textfield name="diarycolor" id="diarycolor" ></s:textfield> 
										<s:select name="diarycolor" list="diarycolorList" id="diarycolor" >
											
										</s:select>
									</td>
									-->								
									<td><s:textfield name="diarycolor" id="diarycolor" cssClass="color" value="66ff00"></s:textfield></td>
									
																									
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">Diary Column Position</td>
										
									<td>
										<s:textfield name="diarycolumnposition" id="diarycolumnposition" ></s:textfield>
									</td>
									
																									
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">Compression Rate %</td>
										
									<td>
										<s:textfield name="compressionrate" id="compressionrate" ></s:textfield>
									</td>
									
																									
								</tr>
								<tr> 
																								
									<td style="font-weight: bold;">Name to display for online Booking</td>
									<td>
										<s:textfield name="onlinename" id="onlinename" ></s:textfield>
									</td>	
																								
								</tr>
								
															
								<tr> 
									<td style="font-weight: bold;">This User</td>
										
									<td>
										<s:checkbox id="isavailableonline" name="isavailableonline">Is Available for online Booking?</s:checkbox>
									</td>
								</tr>
								<tr>
									<td colspan="6" align="center">
										<input type="button" value="Previous" class="buttons" onclick="showPrevUserDetailTab()">
										<input type="button" value="Next" class="buttons" onclick="showNextLoginDetailTab()">
									</td>
									
									
								</tr>
							</table>
				</div>	
						
							
			<div id="loginDetails-tab" class="tab-content">
				
			    <table width="100%" class = "boxclientthirdpartycharge" style="font-size: 12px">
				<col width="30%"/>
				<col width="30%"/>
								
								
								
								
								<tr> 
									<td style="font-weight: bold;">&nbsp;</td>
										
									<td>
										<s:checkbox id="loginsystem" name="loginsystem">This user needs to log into the system</s:checkbox>
									</td>
									
								
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">UserId<span class="reqd-info">*</span></td>
										
									<td>
										<s:textfield name="userId" id="userId" ></s:textfield>
									</td>
									
																									
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">Password<span class="reqd-info">*</span></td>
										
									<td>
										<s:password	id="password" name="password" theme="simple" 
		 									title="Minimum 6 characters, make it hard to guess" />
									</td>
									
																									
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">Last changed</td>
										
									<td>
										<s:label id="lastchanged" name="lastchanged" theme="simple" />
									</td>
									
																									
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">Change Freq</td>
										
									<td>
										<s:textfield name="changefre" id="changefre" ></s:textfield>&nbsp;(days 0=never)
									</td>
									
																									
								</tr>
								<tr>
									<td colspan="6" align="center">
										<input type="button" value="Previous" class="buttons" onclick="showPrevUsersSetupTab()">
										<input type="button" value="Next" class="buttons" onclick="showNextPreferencesTab()">
									</td>
									
									
								</tr>
								</table>
				</div>
							
			<div id="preferences-tab" class="tab-content">
			
			    <table width="100%" class = "boxclientthirdpartycharge" style="font-size: 12px">
				<col width="30%"/>
				<col width="30%"/>
								
								<tr> 
									<td style="font-weight: bold;">Appointment Booking Confirmation Template</td>
										
									<td>
										
										
										<s:select name="appointmentbookingcontem" list="abctList" id="appointmentbookingcontem" >
											
										</s:select>
									
									</td>
								
								</tr>
								
								<tr> 
									<td style="font-weight: bold;">Appointment DNA Template</td>
										
									<td>
										
										
										<s:select name="appointmentbookingdnatem" list="adtList" id="appointmentbookingdnatem" >
											
										</s:select>
									
									</td>
								
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">Contact E-mail Address<span class="reqd-info">*</span></td>
										
									<td>
										<s:textfield id="email" name="email" key="label.email" labelposition="left" required="true" size="50"
										title="Enter valid email id, it will be used to send job notifications, eg. yourname@gmail.com, yourname@yahoo.co.in" />
									</td>
									
																									
								</tr>
								
								<tr> 
								
																	
									<td style="font-weight: bold;">Mobile No (for SMS Confirmation)<span class="reqd-info">*</span></td>
										
									<td>
										<s:textfield id="mobile" name="mobile" key="label.mobileNo" labelposition="left" required="true" 
  										title="Specify valid mobile number, eg 9876543210" />
									</td>
									
																									
								</tr>
								
								<tr> 
									<td style="font-weight: bold;">Notify of new appointments booked via</td>
										
									<td>
										<s:checkbox id="apmremote" name="apmremote"></s:checkbox>APM Remote
										
									</td>
									
								
								</tr>
								<tr> 
									<td style="font-weight: bold;">&nbsp;</td>									
									<td>
										<s:checkbox id="onlinebooking" name="onlinebooking"></s:checkbox>Online Booking
									</td>
									
								
								</tr>
								
								<tr>
									<td colspan="6" align="center">
										<input type="button" value = "Previous" onclick="showPrevLoginDEatils()" class="buttons">
										<s:submit onclick="return validEntry()" cssClass="buttons"/>&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="button" value=" Cancel " onclick="history.back(1);" class="buttons">
									</td>
									
									
								</tr>
								
				
				
				
				</table>
					</s:form>
		
			
			</div>
		
	<div id = "errorDiv" style="color: red">
			
	
		</div>	
	
</div>
	
</div>	
	
