var xmlhttpDetail = new XMLHttpRequest();
var urlD = "detailview.php";
var dataD;
var view;

xmlhttpDetail.onreadystatechange=function() {
	if (this.readyState == 4 && this.status == 200) {
		initDetail(this.responseText);
	}
}

//Passes the row id number from the onclick function to detailview.php
	function getRow(id) {
		xmlhttpDetail.open("GET", urlD+"?id="+id, true);
		xmlhttpDetail.send();
	}

//Arranges the data collected from detailview.php and passes it to the detailView div in index.html
function initDetail(response) {
	dataD = JSON.parse(response);
	view = "";
	view += '<div><p><span id="bold">First Name:</span> ' + dataD[0].FirstName +
	'</p></div><div><p><span id="bold">Last Name:</span> ' + dataD[0].LastName +
	'</p></div><div><p><span id="bold">Address:</span> ' + dataD[0].Address +
	'</p></div><div><p><span id="bold">City:</span> ' + dataD[0].City +
	'</p></div><div><p><span id="bold">State:</span> ' + dataD[0].State +
	'</p></div><div><p><span id="bold">Zip Code:</span> ' + dataD[0].ZipCode +
	'</p></div><div><p><span id="bold">Notes:</span> ' + dataD[0].Notes +
	'</p></div>';
	
	document.getElementById("detailView").innerHTML = view;
}