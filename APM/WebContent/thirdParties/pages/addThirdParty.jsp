<%@taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<link href="thirdParties/css/tabStyle.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="thirdParties/js/addThirdPartyValidaton.js"></script>
</head>
<body>
	
<div style="height: 500px"> 
<div id="tab-container">  
    <ul class="tab-menu">  
        <li id="personalDetails" class="active" onclick = "displayPersonalDetailsTab()">Personal Details</li>  
        <li id="companyDetails" onclick = "displayCompanyDetailsTab()">Company Details</li>  
        <li id="accountSetting" onclick = "displayAccSettingTab()">Account Setting</li>
        <li id="contactPreferences" onclick = "displayContactPrefTab()">Contact Preferences</li>  
          
    </ul>  
    <div class="clear"></div>  
    <div class="tab-top-border"></div>
	<s:form action="saveDetailsThirdParty" id="thirdPartyDetails_frm" theme="simple" >
		
		
		 	
	<div id="personalDetails-tab" class="tab-content active">
			<table width="100%" class = "boxclientthirdpartycharge" style="font-size: 12px">
			<col width="20%" />
			<col width="2%" />
			<col width="30%" />
			<tr>
			<s:hidden id = "type" name = "type"/>
		 	<td align="right">Name<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "name" name = "name" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Salutation</td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "salutation" name = "salutation" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Title</td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "title" name = "title" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Department</td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "department" name = "department" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Index/Search Name</td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "searchName" name = "searchName" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Direct Telephone Line<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "telephoneLine" name = "telephoneLine" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Email<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "email" name = "email" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Email-CC</td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "emailCc" name = "emailCc" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Notes</td>
		 	<td align="center">:</td>
		 	<td><s:textarea name = "notes" id = "notes" rows="2" cols="24"></s:textarea></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Company Details</td>
		 	<td align="center">:</td>
		 	<td><s:textarea id = "companyDetails" name = "companyDetails" rows="2" cols="24"/></td>
		 	</tr>
		 	<tr align="center">
		 		<td colspan="3"><input type="button" class="buttons" value="Next" onclick="showNextCompanyDetails()"> </td>
		 	</tr>
		 	</table>
		 	
	</div>
	
	<div id="companyDetails-tab" class="tab-content">
			    <table width="100%" class = "boxclientthirdpartycharge" style="font-size: 12px">
			<col width="20%" />
			<col width="2%" />
			<col width="30%" />
			<tr>
		 	<td align="right">Company Name<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "companyName" name = "companyName" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Address<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "address" name = "address" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Town<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "town" name = "town" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Country<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "country" name = "country" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Post Code<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "postcode" name = "postcode" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Telephone No.<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "compnyTelephone" name = "compnyTelephone" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Fax</td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "fax" name = "fax" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Web</td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "web" name = "web" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Reference No</td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "referenceNo" name = "referenceNo" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr>
		 	<td align="right">Company Email<span class="reqd-info">*</span></td>
		 	<td align="center">:</td>
		 	<td><s:textfield id = "compnyEmail" name = "compnyEmail" theme="simple" size="30"/></td>
		 	</tr>
		 	<tr align="center">
		 		<td><input type="button" class="buttons" value="Previous" onclick="showPrevPersonalDetail()"></td>
		 		<td><input type="button" class="buttons" value="Next" onclick="showNextAccSetting()"></td>
		 	</tr>
		 	</table>
	</div>
	
	<div id="accountSetting-tab" class="tab-content">
			<table width="100%" class = "boxclientthirdpartycharge" style="font-size: 12px">
			<col width="20%" />
			<col width="2%" />
			<col width="30%" />
			<tr>
		 	<td align="left" colspan="3">Warning Message</td>
		 	</tr>
		 	<tr>
		 	<td align="left"><s:textarea name="warningMsg" id ="warningMsg" rows="5" cols="33"/></td>
		 	</tr>
		 	<tr>
		 	<td align="left">Account Note</td>
		 	</tr>
		 	<tr>
		 	<td align="left"><s:textarea name="accountsNotes" id="accountsNotes" rows="5" cols="33"/></td>
		 	</tr>
		 	<tr>
		 	<td align="left"><b>Other Account Setting</b></td>
		 	</tr>
		 	<tr>
		 	<td align="left">Account must be in Credit
		 	<s:checkbox name="accountMustBeInCredit" id="accountMustBeInCredit" fieldValue="accountMustBeInCredit" value="%{isAccountMustBeInCredit}" title="Account must be in credit"/>
		 	 </td>
		 	</tr>
		 	<tr>
		 	<td align="center">Account Credit Limit:
		 	<s:textfield name = "accountCreditLimit" id = "accountCreditLimit"/></td>
		 	</tr>
		 	<tr>
		 	<td align="center">Credit Warning Limit:
		 	<s:textfield name = "accountWarningLimit" id = "accountWarningLimit"/></td>
		 	</tr>
		 	<tr>
		 	<td align="center">DNA Limit in %:
		 	<s:textfield name = "dnaLimit" id = "dnaLimit"/></td>
		 	</tr>
		 	<tr>
		 	<td align="center">Outstanding Invoice Limit:
		 	<s:textfield name = "outInvoiceLimit" id = "outInvoiceLimit"/></td>
		 	</tr>
		 	<tr align="center">
		 		<td><input type="button" class="buttons" value="Previous" onclick="showPrevCompnyDetail()">
		 		<input type="button" class="buttons" value="Next" onclick="showNextContactPref()"></td>
		 	</tr>
		 	</table>
	</div>
	
	<div id="contactPreferences-tab" class="tab-content">
		
			<table width="100%" class = "boxclientthirdpartycharge" style="font-size: 12px">
			<col width="20%" />
			<col width="2%" />
			<col width="30%" />
			<tr>
		 	<td align="left"><b>Appointment Booking Confirmation Template</b></td>
		 	</tr>
		 	<tr>
		 	<td align="left">Default</td>
		 	</tr>
		 	<tr>
		 	<td align="left"><s:select id = "defaultApmtBookingConfmTemp" name = "defaultApmtBookingConfmTemp" list = "{'Appointment Confirmation','Appointment follow-up Reminder','Appointment Reminder','Appt Confirmation-Pilates','Diabetic Assessment Reminder','Patient Cancelation'}"/></td>
		 	</tr>
		 	<tr>
		 	<td align="left">Contact Email Address<span class="reqd-info">*</span></td>
		 	</tr>
		 	<tr>
		 	<td align="left"><s:textfield id = "confContactEmail" name = "confContactEmail" size="30"/></td>
		 	</tr>
		 	<tr></tr>
		 	<tr></tr>
		 	
		 	<tr>
		 	<td align="left"><b>Appointment DNA Template</b></td>
		 	</tr>
		 	<tr>
		 	<td align="left">Default</td>
		 	</tr>
		 	<tr>
		 	<td align="left"><s:select id = "defaultApmtDnaTemp" name = "defaultApmtDnaTemp" list = "{'Appointment Confirmation','Appointment follow-up Reminder','Appointment Reminder','Appt Confirmation-Pilates','Diabetic Assessment Reminder','Patient Cancelation'}"/></td>
		 	</tr>
		 	<tr>
		 	<td align="left">Contact Email Address<span class="reqd-info">*</span></td>
		 	</tr>
		 	<tr>
		 	<td align="left"><s:textfield id = "dnaContactEmail" name = "dnaContactEmail" size="30"/></td>
		 	</tr>
		 	<tr>
		 		<td><input type="button" class="buttons" value="Previous" onclick="showPrevAccountSetting()">
		 		<s:submit value="Save" cssClass="buttons" onclick = " return validEntry()"/></td>
		 	</tr>
		 	
		 	</table>
		 	
				
			</s:form>
	</div>
	<div id = "errorDiv" style="color: red">
			
	
		</div> 	

</div>
</body>


	
	
	
			
			
			
								
				                        

</html>					