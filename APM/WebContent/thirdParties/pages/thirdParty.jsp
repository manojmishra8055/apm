<%@taglib uri="/struts-tags" prefix="s" %>
<link href="thirdParties/css/popupstyle.css" rel="stylesheet" type="text/css" />
<link href="thirdParties/css/subModal.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="thirdParties/js/common.js"></script>
<script type="text/javascript" src="thirdParties/js/subModal.js"></script>
<script type="text/javascript" src="thirdParties/js/thirdParty.js"></script>
<script type="text/javascript" src="common/js/pagination.js"></script>



<div id="login_main" class="main_layout_content">
	<h2 class="title" style="margin-left: 14px" >List Third Party</h2>
	
	<div id="login" class="block_div">
	<div class="diaryuser"> 
		<table align="center">
			<tr>
			
			   <s:if test="%{#thirdPartyTypeList != 'null'}" >
				 	<td><s:select id="name" name="name" list="thirdPartyTypeList" listKey="id" listValue="name" headerKey="0" theme="simple" headerValue="Filter By Type"/></td>
				 	<td><label id = "nameError" name = "nameError"></label> </td>
				</s:if>
				<td><s:submit value="Show" theme="simple" cssClass="buttons"/></td>
				<td align="left"><input type="button" value="Add" onclick="showAddThirdPartyPopup()" class="buttons"> </td>
				
				
				
			</tr>
		</table>
			
		</div>
		
	
	<div class="form_elements">	
		<s:form action="showListThirdParty" id = "thirdParty_form">
		
		
						
				<table id="results" cellpadding="0" cellspacing="0" class="my-table"  style="width:100%;">
					<tr>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Third Party Type</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Company</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Contact Name</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Department</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Contact Details</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Edit</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Delete</th>
						
						
						
					</tr>
					<s:if test="thirdPartyDetailList.size!=0">
						<s:iterator value="thirdPartyDetailList">
						<tr>	
							
									<td><s:property value="type"/></td>
									<td><s:property  value="companyName"/></td>
									<td><s:property  value="title" />&nbsp;<s:property  value="name" /></td>
									<td><s:property  value="department" /></td>
									<td><s:property value="email"/>,&nbsp;<s:property value="telephoneLine" /> </td>
																		
									<td onclick = "showEditThirdPartyPopup('<s:property  value="id"/>','<s:property  value="thirdPartyId"/>','<s:property  value="type"/>','<s:property  value="name"/>','<s:property  value="salutation"/>','<s:property  value="title"/>','<s:property  value="department"/>','<s:property  value="searchName"/>','<s:property  value="telephoneLine"/>','<s:property  value="email"/>',
											'<s:property  value="emailCc"/>','<s:property  value="notes"/>','<s:property  value="companyDetails"/>','<s:property  value="companyName"/>','<s:property  value="address"/>','<s:property  value="town"/>','<s:property  value="country"/>','<s:property  value="postcode"/>','<s:property  value="compnyTelephone"/>','<s:property  value="fax"/>','<s:property  value="web"/>','<s:property  value="referenceNo"/>','<s:property  value="compnyEmail"/>','<s:property  value="warningMsg"/>','<s:property  value="accountsNotes"/>',
											'<s:property  value="accountMustBeInCredit"/>','<s:property  value="accountCreditLimit"/>','<s:property  value="accountWarningLimit"/>','<s:property  value="defaultApmtBookingConfmTemp"/>','<s:property  value="defaultApmtDnaTemp"/>','<s:property  value="confContactEmail"/>','<s:property  value="dnaContactEmail"/>','<s:property value = "dnaLimit"/>','<s:property value = "outInvoiceLimit"/>')"><img src="common/images/edit.jpg"></img></td>
										
									<s:url action="deleteDetailsThirdParty" id="delete">
									<s:param name="selectedid" value="%{id}"></s:param>
									</s:url>
									<td><s:a href="%{delete}" onclick = "return confirmedDelete()"><img src="common/images/delete.gif"></img></s:a></td>
										
							</tr>

						</s:iterator>
					</s:if>
					</table>
					<s:else>
						There is no Record found!!
					</s:else>
						
				
				
			</s:form>	
				
						
		
				
				
				
       			
       			

		
		
	</div>
</div>
