var xmlhttpTable = new XMLHttpRequest();
var urlT = "lamp.php";
var dataT;
var current_page = 1;
var records_per_page = 5;

xmlhttpTable.onreadystatechange=function() {
	if (this.readyState == 4 && this.status == 200) {
		initTable(this.responseText);
	}
}
xmlhttpTable.open("GET", urlT, true);
xmlhttpTable.send();

//Initializes the creation of the table.
function initTable(response) {
	dataT = JSON.parse(response);	
	changePage(1);	
	initPages();
}

//Retrieves the data from lamp.php and creates a table displaying only 5 rows at a time			
function changePage(page)	{
	var tableView = document.getElementById("tableView");	
	var navNumbs = document.getElementById("navNumbs;");	
	var out = "<table id='data' class='table-striped'><tbody>";
		 
	// Validate page
	if (page < 1) page = 1;
	if (page > numPages()) page = numPages();

	tableView.innerHTML = "";

	for (var i = (page-1) * records_per_page; i < (page * records_per_page) && i < dataT.length; i++) {
		out += "<tr onclick='getRow("+(i+1)+");'><td>" +
		dataT[i].FirstName +
		"</td><td>" +
		dataT[i].LastName +
		"</td><td>" +
		dataT[i].Address +
		"</td><td>" +
		dataT[i].City +
		"</td><td>" +
		dataT[i].State +
		"</td><td>" +
		dataT[i].ZipCode +
		"</td></tr>";			
	}
	out += "</tbody></table>";
	tableView.innerHTML = out;
	$('#data').on('click', 'tbody tr', function(event) {
    $(this).addClass('highlight').siblings().removeClass('highlight');
  });	
}

function numPages()	{
	return Math.ceil(dataT.length / records_per_page);
}

//Creates navigation for table pages		
function initPages() {
	var nav = "Page:";
	for(var i = 1; i <= numPages(); i++) {
	nav += '<a href="javascript:changePage(' + i + ')">' + i + '</a>';
	}
	navNumbs.innerHTML = nav;
}