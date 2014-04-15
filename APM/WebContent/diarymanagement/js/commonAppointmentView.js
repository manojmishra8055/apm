
function showAnotherPopup(){
	showAllPatientPopUp();
	
	$(document.getElementById('dashboardDiv')).css('width', '80%');
	document.getElementById('anothertd').style.display = '';
	document.getElementById('clientSearchDiv').style.display = '';
	
}



function showAllPatientPopUp(){

var url = "Client";



if (window.XMLHttpRequest) {
		req = new XMLHttpRequest();
	}
	else if (window.ActiveXObject) {
		isIE = true;
		req = new ActiveXObject("Microsoft.XMLHTTP");
	}   
               
    req.onreadystatechange = showAllPatientPopUpRequest;
    req.open("GET", url, true); 
              
    req.send(null);

}
function showAllPatientPopUpRequest(){
if (req.readyState == 4) {
		if (req.status == 200) {
		
			document.getElementById("allPatient").innerHTML = req.responseText;
         	
			
         }
	}
}

function searchPatient(){
	var searchText = document.getElementById("searchText").value;
	//alert(searchText);
	var url = "searchPatientClient?searchText="+searchText+"";

	if (window.XMLHttpRequest) {
			req = new XMLHttpRequest();
		}
		else if (window.ActiveXObject) {
			isIE = true;
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}   
	               
	    req.onreadystatechange = searchPatientRequest;
	    req.open("GET", url, true); 
	              
	    req.send(null);

	}
	function searchPatientRequest(){
	if (req.readyState == 4) {
			if (req.status == 200) {
			
				document.getElementById("allPatient").innerHTML = req.responseText;
	         	
				
	         }
		}
	}

function addPatient(){
			
			$(document.getElementById('dashboardDiv')).css('width', '80%');
			document.getElementById('anothertd').style.display = '';
			document.getElementById('clientSearchDiv').style.display = 'none';
			document.getElementById('addPatientDiv').style.display = '';
			
}

function savePatient(){
	var title = document.getElementById('title').value;
	var firstName = document.getElementById('firstName').value;
	var lastName = document.getElementById('lastName').value;
	var gender = document.getElementById('gender').value;
	var dob = document.getElementById('dob').value;
	var address = document.getElementById('address').value;
	var town = document.getElementById('town').value;
	var county = document.getElementById('county').value;
	var country = document.getElementById('country').value;
	var postCode = document.getElementById('postCode').value;
	var homeNo = document.getElementById('homeNo').value;
	var workNo = document.getElementById('workNo').value;
	var mobNo = document.getElementById('mobNo').value;
	var email = document.getElementById('email').value;
	var sourceOfIntro = document.getElementById('sourceOfIntro').value;
	
	var url = "savePatientClient?title="+title+"&firstName="+firstName+"&lastName="+lastName+"&gender="+gender+"&dob="+dob+"&address="+address+"&town="+town+"&county="+county+"&country="+country+"&postCode="+postCode+"&homeNo="+homeNo+"&workNo="+workNo+"&mobNo="+mobNo+"&email="+email+"&sourceOfIntro="+sourceOfIntro+"";

	if (window.XMLHttpRequest) {
			req = new XMLHttpRequest();
		}
		else if (window.ActiveXObject) {
			isIE = true;
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}   
	               
	    req.onreadystatechange = savePatientRequest;
	    req.open("GET", url, true); 
	              
	    req.send(null);

	}
	function savePatientRequest(){
	if (req.readyState == 4) {
			if (req.status == 200) {
			
				document.getElementById("allPatient").innerHTML = req.responseText;
				$(document.getElementById('dashboardDiv')).css('width', '80%');
				document.getElementById('anothertd').style.display = '';
				document.getElementById('clientSearchDiv').style.display = '';
				document.getElementById('addPatientDiv').style.display = 'none';
				
	         	
				
	         }
		}
	}
	
	function cancelAddPatient(){
		$(document.getElementById('dashboardDiv')).css('width', '80%');
		document.getElementById('anothertd').style.display = '';
		document.getElementById('clientSearchDiv').style.display = '';
		document.getElementById('addPatientDiv').style.display = 'none';
	}
function closeSearchPatient(){
	$(document.getElementById('dashboardDiv')).css('width', '40%');
	document.getElementById('anothertd').style.display = 'none';
	document.getElementById('clientSearchDiv').style.display = 'none';
	
	document.getElementById('appointment').style.display = '';
	
}