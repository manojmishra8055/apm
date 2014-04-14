$(document).ready(function(){
	
	var validator = $("#userprofile_form").validate({
		onsubmit: true,
		rules : {
			userId : {
				required : true,
				minlength : constraint.userId.minlength,
				nowhitespace : true ,
				//remote: 'CheckUserId'
			},	
			password : {
				required : true,
				minlength : constraint.password.minlength
			},
			
			firstname : {
          		required : true,
          		regex :/^[a-zA-Z ]+$/
          	},
          	
          	lastname : {
          		required : true,
          		regex :/^[a-zA-Z ]+$/
          	},
          	
          	initial : {
          		required : true,
          		//regex :/^[a-zA-Z ]+$/
          	},
          	
          	jobtitle : {
          		required : true,
          		//regex :/^[a-zA-Z ]+$/
          	},
          	
          	diarycolumnposition : {
				integer : true,
			//	required : true
			},
          	
          	compressionrate : {
				integer : true,
				//required : true
			},
          	
          	changefre : {
				integer : true,
				//required : true
			},
			
			email : {
				required : true,
				email : true,
				//remote: '/UnlockJobs/user/CheckEmailId' // Action will be invoked to check if user with this email id already exist (Ajax call)
			},
			
			mobile : {
				required : true,
				//mobilenumber : true
			},
			diarycolor : {
				remote: 'CheckColor'
			}
			
				
		},
		
		
		messages : {	
			userId : {
				required : error.userId.required,
				minlength : jQuery.format(error.userId.minLength),	// format function replaces {0} with actual minimum length
				nowhitespace : error.userId.nowhitespace ,
				//remote: error.userId.alreadyExist
			},	
			password : {
				required : error.password.required,
				minlength : jQuery.format(error.password.minlength)
			},
			firstname : {
				required : error.firstname.required,
				regex : error.firstname.alphabets
			},
			lastname : {
				required : error.lastname.required,
				regex : error.lastname.alphabets
			},
			initial : {
				required : error.initial.required,
				//regex : error.initial.alphabets
			},
			jobtitle : {
				required : error.jobtitle.required,
				//regex : error.jobtitle.alphabets
			},
			
			diarycolumnposition : {
				integer : error.diarycolumnposition.integer,
				//required : error.diarycolumnposition.required
			},
			
			compressionrate : {
				integer : error.compressionrate.integer,
				//required : error.compressionrate.required
			},
			
			changefre : {
				integer : error.changefre.integer,
				//required : error.changefre.required
			},
			
			email : {
				required : error.email.required,
				email : error.email.email,
				remote: error.email.alreadyExist
			},
			
			mobile : {
				required : error.mobile.required,
				//mobilenumber : error.mobile.mobilenumber
			},
			diarycolor : {
				remote: error.diarycolor.alreadyExist
			},
			
		},
		
	});
	
	
});	

function showOtherJobTitle(){
	var e = document.getElementById('jobtitle');
			var jobtitle = e.options[e.selectedIndex].text;
			//alert(occupation);
 		 	if(jobtitle == 'Other') 
            {
                document.getElementById("jobTitle_other").style.display = ""; // This line makes the DIV visible
            } 
            else {            
                document.getElementById("jobTitle_other").style.display = "none"; // This line hides the DIV
            }
}

function addOtherJobTitle(jobtitle){

var url = "addOtherJobTitleUserProfile?jobtitle="+jobtitle+" ";
if (window.XMLHttpRequest) {
		req = new XMLHttpRequest();
	}
	else if (window.ActiveXObject) {
		isIE = true;
		req = new ActiveXObject("Microsoft.XMLHTTP");
	}   
               
    req.onreadystatechange = addOtherJobTitleRequest;
    req.open("GET", url, true); 
              
    req.send(null);

}    
function addOtherJobTitleRequest(){
if (req.readyState == 4) {
		if (req.status == 200) {
		
			
    		
         
         }
	}
}


function validEntry(){


	
	var email = document.getElementById('email').value;
	var mobile = document.getElementById('mobile').value;

	

	 var atpos=email.indexOf("@");
	 var dotpos=email.lastIndexOf(".");
	     if (email ==  "") {
	      	var email = document.createElement("label");
	        email.innerHTML = "Enter email in Preferences Tab";
	        document.getElementById('errorDiv').appendChild(email);
	        document.getElementById('errorDiv').appendChild(document.createElement('br'));
	        chk=1;
	     }  
	     
		 else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length) {
	        var email = document.createElement("label");
	        email.innerHTML = "Enter valid email in Preferences Tab";
	        document.getElementById('errorDiv').appendChild(email);
	        document.getElementById('errorDiv').appendChild(document.createElement('br'));
	       	
	        chk=1;
	     } 
		if (mobile ==  "") {
	      	var mobile = document.createElement("label");
	        mobile.innerHTML = "Enter mobile no in Preferences Tab";
	        document.getElementById('errorDiv').appendChild(mobile);
	        document.getElementById('errorDiv').appendChild(document.createElement('br'));
	        chk=1;
	     } 
	     else if (isNaN(mobile)===true){
	  	 var mobiledig = document.createElement("label");
	     mobiledig.innerHTML = "Enter valid mobile no in Preferences Tab"; 
	     document.getElementById('errorDiv').appendChild(mobiledig);
	     document.getElementById('errorDiv').appendChild(document.createElement('br'));
	  	chk=1;
		}
		
		  
	     if(chk==1)
	     {
	        return false;
	     }
	     else
	     {
	    	 alert("Details Updated Sucessfully"); 
	        return true;
	     }
	}


	function confirmedDelete(){

	var r=confirm("Are you sure you want to delete this entry");
	if (r==true)
	  {
	  return true;
	  }
	else
	  {
	  return false;
	  }

	}

	function showOtherJobTitle(){
		var e = document.getElementById('jobtitle');
				var jobtitle = e.options[e.selectedIndex].text;
				//alert(occupation);
	 		 	if(jobtitle == 'Other') 
	            {
	                document.getElementById("jobTitle_other").style.display = ""; // This line makes the DIV visible
	            } 
	            else {            
	                document.getElementById("jobTitle_other").style.display = "none"; // This line hides the DIV
	            }
	}

	function addOtherJobTitle(jobtitle){

	var url = "addOtherJobTitleUserProfile?jobtitle="+jobtitle+" ";
	if (window.XMLHttpRequest) {
			req = new XMLHttpRequest();
		}
		else if (window.ActiveXObject) {
			isIE = true;
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}   
	               
	    req.onreadystatechange = addOtherJobTitleRequest;
	    req.open("GET", url, true); 
	              
	    req.send(null);

	}    
	function addOtherJobTitleRequest(){
	if (req.readyState == 4) {
			if (req.status == 200) {
			
				
	    		
	         
	         }
		}
	}

	function showUserSetupTab(){
		var firstname = document.getElementById('firstname').value;
		var lastname = document.getElementById('lastname').value;
		var initial = document.getElementById('initial').value;
		var jobtitle = document.getElementById('jobtitle').value;
		
		document.getElementById('errorDiv').innerHTML="";
		var chk=0;
		if(firstname == ""){
		    	var firstname = document.createElement("label");
		        firstname.innerHTML = "Enter First Name in User Detail Tab";
		        document.getElementById('errorDiv').appendChild(firstname);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }  
		if(lastname == ""){
		    	var lastname = document.createElement("label");
		        lastname.innerHTML = "Enter last Name in User Detail Tab";
		        document.getElementById('errorDiv').appendChild(lastname);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }   
		 if(initial == 0){
		    	var initial = document.createElement("label");
		        initial.innerHTML = "Enter Initial in User Detail Tab";
		        document.getElementById('errorDiv').appendChild(initial);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }  
		 if(jobtitle == 0){
		    	var jobtitle = document.createElement("label");
		        jobtitle.innerHTML = "Enter Job Title in User Detail Tab";
		        document.getElementById('errorDiv').appendChild(jobtitle);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }  
		 if(chk==1)
	     {
	        return false;
	     }
	     else
	     {
	    	 	var userSetup = document.getElementById("userSetup-tab");
	    	 	userSetup.className="tab-content active";
	    		var headuserSetup = document.getElementById("userSetup");
	    		headuserSetup.className="active";
	    		
	    		var userDetail = document.getElementById("userDetails-tab");
	    		userDetail.className="tab-content";
	    		var headuserDetail = document.getElementById("userDetails");
	    		headuserDetail.className="none"; 
	        return true;
	     }
		
		
		
	}

	function showPrevUserDetailTab(){
		var userSetup = document.getElementById("userSetup-tab");
	 	userSetup.className="tab-content";
		var headuserSetup = document.getElementById("userSetup");
		headuserSetup.className="none";
		
		var userDetail = document.getElementById("userDetails-tab");
		userDetail.className="tab-content active";
		var headuserDetail = document.getElementById("userDetails");
		headuserDetail.className="active"; 
	}

	function showNextLoginDetailTab(){
		var diarycolumnposition = document.getElementById('diarycolumnposition').value;
		var compressionrate = document.getElementById('compressionrate').value;
		document.getElementById('errorDiv').innerHTML="";
		var chk=0;

		    
		/* if(compressionrate == ""){
		    	var compressionrate = document.createElement("label");
		        compressionrate.innerHTML = "Enter Compression rate in User Setup Tab";
		        document.getElementById('errorDiv').appendChild(compressionrate);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }  */
		   if (isNaN(compressionrate)===true){
		  	 var compressionratedig = document.createElement("label");
		     compressionratedig.innerHTML = "Enter Digit ony in Compression Rate in User Setup Tab"; 
		     document.getElementById('errorDiv').appendChild(compressionratedig);
		     document.getElementById('errorDiv').appendChild(document.createElement('br'));
		  	chk=1;
		} 
		 if(chk==1)
	     {
	        return false;
	     }
	     else
	     {
	    	 	var loginDet = document.getElementById("loginDetails-tab");
	    	 	loginDet.className="tab-content active";
	    		var headloginDetails = document.getElementById("loginDetails");
	    		headloginDetails.className="active";
	    		
	    		var userSet = document.getElementById("userSetup-tab");
	    		userSet.className="tab-content";
	    		var headuserSetup = document.getElementById("userSetup");
	    		headuserSetup.className="none"; 
	        return true;
	     }
		
	}

	function showPrevUsersSetupTab(){
		var loginDet = document.getElementById("loginDetails-tab");
	 	loginDet.className="tab-content";
		var headloginDetails = document.getElementById("loginDetails");
		headloginDetails.className="none";
		
		var userSet = document.getElementById("userSetup-tab");
		userSet.className="tab-content active";
		var headuserSetup = document.getElementById("userSetup");
		headuserSetup.className="active";
	}

	function showNextPreferencesTab(){
		document.getElementById('errorDiv').innerHTML="";
		var chk=0;
		var changefre = document.getElementById('changefre').value;
		var userId = document.getElementById('userId').value;
		
		if(userId == ""){
	    	var userId = document.createElement("label");
	    	userId.innerHTML = "Enter userId Login Details Tab";
	        document.getElementById('errorDiv').appendChild(userId);
	        document.getElementById('errorDiv').appendChild(document.createElement('br'));
	        chk=1;
	 }
		

		/*if(changefre == ""){
		    	var changefre = document.createElement("label");
		        changefre.innerHTML = "Enter Change Freq in Login Details Tab";
		        document.getElementById('errorDiv').appendChild(changefre);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }  */
		  if (isNaN(changefre)===true){
		  	 var changefredig = document.createElement("label");
		     changefredig.innerHTML = "Enter Digit ony in Change Freq Login Details Tab"; 
		     document.getElementById('errorDiv').appendChild(changefredig);
		     document.getElementById('errorDiv').appendChild(document.createElement('br'));
		  	chk=1;
		}
		  if(chk==1)
		     {
		        return false;
		     }
		     else
		     {
		    	 	var loginDet = document.getElementById("loginDetails-tab");
		    	 	loginDet.className="tab-content";
		    		var headloginDetails = document.getElementById("loginDetails");
		    		headloginDetails.className="none";
		    		
		    		var preferences = document.getElementById("preferences-tab");
		    		preferences.className="tab-content active";
		    		var headuserpreferences = document.getElementById("preferences");
		    		headuserpreferences.className="active";
		        return true;
		     }
		
	}

	function showPrevLoginDEatils(){
		var loginDet = document.getElementById("loginDetails-tab");
	 	loginDet.className="tab-content active";
		var headloginDetails = document.getElementById("loginDetails");
		headloginDetails.className="active";
		
		var preferences = document.getElementById("preferences-tab");
		preferences.className="tab-content";
		var headuserpreferences = document.getElementById("preferences");
		headuserpreferences.className="none";
		
	}

	function displayUserDetailsTab(){
		
		var userSetup = document.getElementById("userSetup-tab");
	 	userSetup.className="tab-content";
		var headuserSetup = document.getElementById("userSetup");
		headuserSetup.className="none";
		
		var userDetail = document.getElementById("userDetails-tab");
		userDetail.className="tab-content active";
		var headuserDetail = document.getElementById("userDetails");
		headuserDetail.className="active"; 
		
		var loginDet = document.getElementById("loginDetails-tab");
	 	loginDet.className="tab-content";
		var headloginDetails = document.getElementById("loginDetails");
		headloginDetails.className="none";
		
		var preferences = document.getElementById("preferences-tab");
		preferences.className="tab-content";
		var headuserpreferences = document.getElementById("preferences");
		headuserpreferences.className="none";
		
	}

	function displayUserSetupTab(){
		var firstname = document.getElementById('firstname').value;
		var lastname = document.getElementById('lastname').value;
		var initial = document.getElementById('initial').value;
		var jobtitle = document.getElementById('jobtitle').value;
		
		document.getElementById('errorDiv').innerHTML="";
		var chk=0;
		if(firstname == ""){
		    	var firstname = document.createElement("label");
		        firstname.innerHTML = "Enter First Name in User Detail Tab";
		        document.getElementById('errorDiv').appendChild(firstname);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }  
		if(lastname == ""){
		    	var lastname = document.createElement("label");
		        lastname.innerHTML = "Enter last Name in User Detail Tab";
		        document.getElementById('errorDiv').appendChild(lastname);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }   
		 if(initial == 0){
		    	var initial = document.createElement("label");
		        initial.innerHTML = "Enter Initial in User Detail Tab";
		        document.getElementById('errorDiv').appendChild(initial);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }  
		 if(jobtitle == 0){
		    	var jobtitle = document.createElement("label");
		        jobtitle.innerHTML = "Enter Job Title in User Detail Tab";
		        document.getElementById('errorDiv').appendChild(jobtitle);
		        document.getElementById('errorDiv').appendChild(document.createElement('br'));
		        chk=1;
		 }  
		 if(chk==1)
	     {
	        return false;
	     }
	     else
	     {
	    	 var userSetup = document.getElementById("userSetup-tab");
	    	 	userSetup.className="tab-content active";
	    		var headuserSetup = document.getElementById("userSetup");
	    		headuserSetup.className="active";
	    		
	    		var userDetail = document.getElementById("userDetails-tab");
	    		userDetail.className="tab-content";
	    		var headuserDetail = document.getElementById("userDetails");
	    		headuserDetail.className="none"; 
	    		
	    		var loginDet = document.getElementById("loginDetails-tab");
	    	 	loginDet.className="tab-content";
	    		var headloginDetails = document.getElementById("loginDetails");
	    		headloginDetails.className="none";
	    		
	    		var preferences = document.getElementById("preferences-tab");
	    		preferences.className="tab-content";
	    		var headuserpreferences = document.getElementById("preferences");
	    		headuserpreferences.className="none";
	        return true;
	     }
		
		
	}

	function displayLoginDetailsTab(){
		var diarycolumnposition = document.getElementById('diarycolumnposition').value;
		var compressionrate = document.getElementById('compressionrate').value;
		document.getElementById('errorDiv').innerHTML="";
		var chk=0;

		
		   if (isNaN(compressionrate)===true){
		  	 var compressionratedig = document.createElement("label");
		     compressionratedig.innerHTML = "Enter Digit ony in Compression Rate in User Setup Tab"; 
		     document.getElementById('errorDiv').appendChild(compressionratedig);
		     document.getElementById('errorDiv').appendChild(document.createElement('br'));
		  	chk=1;
		} 
		 if(chk==1)
	     {
	        return false;
	     }
	     else
	     {
	    	 var userSetup = document.getElementById("userSetup-tab");
	    	 	userSetup.className="tab-content";
	    		var headuserSetup = document.getElementById("userSetup");
	    		headuserSetup.className="none";
	    		
	    		var userDetail = document.getElementById("userDetails-tab");
	    		userDetail.className="tab-content";
	    		var headuserDetail = document.getElementById("userDetails");
	    		headuserDetail.className="none"; 
	    		
	    		var loginDet = document.getElementById("loginDetails-tab");
	    	 	loginDet.className="tab-content active";
	    		var headloginDetails = document.getElementById("loginDetails");
	    		headloginDetails.className="active";
	    		
	    		var preferences = document.getElementById("preferences-tab");
	    		preferences.className="tab-content";
	    		var headuserpreferences = document.getElementById("preferences");
	    		headuserpreferences.className="none";
	        return true;
	     }
		
	}

	function displayPreferenceTab(){
		document.getElementById('errorDiv').innerHTML="";
		var chk=0;
		var changefre = document.getElementById('changefre').value;
		var userId = document.getElementById('userId').value;
		
		if(userId == ""){
	    	var userId = document.createElement("label");
	    	userId.innerHTML = "Enter userId Login Details Tab";
	        document.getElementById('errorDiv').appendChild(userId);
	        document.getElementById('errorDiv').appendChild(document.createElement('br'));
	        chk=1;
	 }
		
		
		  if (isNaN(changefre)===true){
		  	 var changefredig = document.createElement("label");
		     changefredig.innerHTML = "Enter Digit ony in Change Freq Login Details Tab"; 
		     document.getElementById('errorDiv').appendChild(changefredig);
		     document.getElementById('errorDiv').appendChild(document.createElement('br'));
		  	chk=1;
		}
		  if(chk==1)
		     {
		        return false;
		     }
		     else
		     {
		    	 var userSetup = document.getElementById("userSetup-tab");
		    	 	userSetup.className="tab-content";
		    		var headuserSetup = document.getElementById("userSetup");
		    		headuserSetup.className="none";
		    		
		    		var userDetail = document.getElementById("userDetails-tab");
		    		userDetail.className="tab-content";
		    		var headuserDetail = document.getElementById("userDetails");
		    		headuserDetail.className="none"; 
		    		
		    		var loginDet = document.getElementById("loginDetails-tab");
		    	 	loginDet.className="tab-content";
		    		var headloginDetails = document.getElementById("loginDetails");
		    		headloginDetails.className="none";
		    		
		    		var preferences = document.getElementById("preferences-tab");
		    		preferences.className="tab-content active";
		    		var headuserpreferences = document.getElementById("preferences");
		    		headuserpreferences.className="active";
		        return true;
		     }
		
	}
