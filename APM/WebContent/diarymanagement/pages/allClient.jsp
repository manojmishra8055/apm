<%@taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript" src="diarymanagement/js/nonavailableslot.js"></script>

<div id="login_main" class="main_layout_content">
	<h2 class="title" style="margin-right: 20px;margin-left: 45px">All Patients</h2>
	
	<div id="login" class="block_div">
		
		<div id="closediv" class="close" style="display: none;"></div>
		<div class="diaryuser" style="margin-top: 6px">
					<a href="addClient" style="text-decoration: none" ><input type="button" class = "buttons" value = "Add">	</a>
					
					</div>
				<s:form action="searchParticularClient" theme="simple">
				<div align="center"><s:textfield theme="simple" name="searchText" placeholder="Search by Name" size="80" cssClass="Search"/>
					<input type="submit" value="Go" class="go"/>
				</div>
			</s:form>
					<div class="form_elements">	
						<input type="hidden" id = "client" name ="client" > 
					<input type="hidden" id = "clientId" name ="clientId" >
				<table id="results" cellpadding="0" cellspacing="0" class="my-table"  style="width:100%;">
					<tr>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Title</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Name</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Mobile No</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Email</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Gender</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">DOB</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Address</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Town</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Country</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Postcode</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Reference</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Source of Intro</th>
						
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Edit</th>
						<th style="background:transparent url('common/images/table_header.gif') no-repeat scroll 0 0;">Delete</th>
					</tr>
					<s:if test="allPatientList.size!=0">
						<s:iterator value="allPatientList" status="rowstatus">
						<tr>	
							<s:if test="#rowstatus.even == true">
								<tr class="ac_odd">
							</s:if>
									
									<td><s:property  value="title" /></td>
									
									<td><a href=" " onclick="return setClientName('<s:property  value="firstName" /><s:property  value="lastName" />','<s:property  value="id" />','<s:property  value="thirdPartyType" />','<s:property  value="thirdPartyTypeName" />')"><s:property  value="firstName" /><s:property  value="lastName" /> </a>
									 </td>
									
									
									<td><s:property  value="mobNo" /></td>
									<td><s:property  value="email" /></td>
									<td><s:property  value="gender" /></td>
									
									<td><s:property  value="dob" /></td>
									<td><s:property  value="address" /></td>
									<td><s:property  value="town" /></td>
									<td><s:property  value="country" /></td>
									<td><s:property  value="postCode" /></td>
									<td><s:property  value="reference" /></td>
									<td><s:property  value="sourceOfIntro" /></td>
									
									
									
									<s:hidden value="%{id}" name="id"></s:hidden>
									<s:url action="editClient" id="edit">
    								<s:param name="selectedid" value="%{id}"></s:param>
									</s:url>
     								<td><s:a href="%{edit}"><img src="common/images/edit.jpg"></img></s:a></td>
    								<s:url action="deleteClient" id="delete">
									<s:param name="selectedid" value="%{id}"></s:param>
									</s:url>
									<td><s:a href="%{delete}" onclick = "return confirmedDelete()"><img src="common/images/delete.gif"></img></s:a></td>	
							</tr>

						</s:iterator>
					</s:if>
					<s:else>
						There is no Client found!!
					</s:else>
							
				</table>
			
			
				
				
				
				
				
				
       			
       			

		
		
	
			
			
				
				
				
				
				
				
       			
       			

		
		
	</div>
</div>