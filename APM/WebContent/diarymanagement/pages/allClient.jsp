<%@taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript" src="diarymanagement/js/nonavailableslot.js"></script>

<div id="login_main" class="main_layout_content">
	<h2 class="title" style="margin-right: 20px;margin-left: 45px">All Patients</h2>
	
	<div id="login" class="block_div">
		
		
		<%-- <div class="diaryuser" style="margin-top: 6px">
					<a href="addClient" style="text-decoration: none" ><input type="button" class = "buttons" value = "Add">	</a>
			<s:form action="searchParticularClient" theme="simple">
				
				<s:textfield theme="simple" name="searchText" placeholder="Search by Name" size="20" cssClass="Search"/>
				<input type="submit" value="Go"/>
				
			</s:form>
		</div> --%>
		<div class="diaryuser">
		<input type="button" value="Add" class="buttons" onclick="addPatient()">
		<input type= "text" name="searchText" id = "searchText" placeholder="Search by Name" size="20" class="Search" >
		<input type="submit" value="Go" class="buttons" onclick = "searchPatient()"/>
		<input type="button" value="Close" class="buttons" onclick = "closeSearchPatient()"/>
		</div>	
					<div class="form_elements">	
						<input type="hidden" id = "client" name ="client" > 
					<input type="hidden" id = "clientId" name ="clientId" >
				<table id="allPatient" cellpadding="0" cellspacing="0" class="my-table"  style="width:100%;">
					<tr>
						
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Name</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Mobile No</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Email</th>
					
					</tr>
					<s:if test="allPatientList.size!=0">
						<s:iterator value="allPatientList" status="rowstatus">
						<tr>	
							<s:if test="#rowstatus.even == true">
								<tr class="ac_odd">
							</s:if>
									
									
									
									<td><a href=" " onclick="return setClientName('<s:property  value="firstName" /><s:property  value="lastName" />','<s:property  value="id" />','<s:property  value="thirdPartyType" />','<s:property  value="thirdPartyTypeName" />')"><s:property  value="firstName" /><s:property  value="lastName" /> </a>
									 </td>
									
									
									<td><s:property  value="mobNo" /></td>
									<td><s:property  value="email" /></td>
									
							</tr>

						</s:iterator>
					</s:if>
					
							
				</table>
			
				
				
				
				
				
				
				
       			
       			

		
		
	
			
			
				
				
				
				
				
				
       			
       			

		
		
	</div>
</div>