<?php
	$link=mysqli_connect("localhost", "cl19-lamp", "9U!sUXrqM", "cl19-lamp");

	if (mysqli_connect_error()) {
		die ("Could not connect to database");
	}

//Query to collect the specified data from the database
	$result=$link->query("SELECT FirstName, LastName, Address, City, State, ZipCode FROM lamp_test");

//Creates a variable and stores the collected data in a JSON format
	$data="[";
	while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
			if ($data != "[") {$data .= ",";}
			$data .= '{"FirstName":"'  . $rs["FirstName"] . '",';
			$data .= '"LastName":"'   . $rs["LastName"]        . '",';
			$data .= '"Address":"'. $rs["Address"]     . '",';
			$data .= '"City":"'. $rs["City"]     . '",';
			$data .= '"State":"'. $rs["State"]     . '",';
			$data .= '"ZipCode":"'. $rs["ZipCode"]     . '"}';
	}
	$data .="]";

	$link->close();

//Prints the data for retrieval by the changePage function in the tableview script
	echo($data);
?>