<?php
	$id = intval($_GET['id']);
	$link=mysqli_connect("localhost", "cl19-lamp", "9U!sUXrqM", "cl19-lamp");

	if (mysqli_connect_error()) {
		die ("Could not connect to database");
	}
	
//Use $id to determine the id number for selection and gather the specified data.
	$result=$link->query("SELECT FirstName, LastName, Address, City, State, ZipCode, Notes FROM lamp_test WHERE id=$id;");
	
//Create data variable and store retrieve data in json format.
	$data="[";
	while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
			if ($data != "[") {$data .= ",";}
			$data .= '{"FirstName":"'  . $rs["FirstName"] . '",';
			$data .= '"LastName":"'   . $rs["LastName"]        . '",';
			$data .= '"Address":"'. $rs["Address"]     . '",';
			$data .= '"City":"'. $rs["City"]     . '",';
			$data .= '"State":"'. $rs["State"]     . '",';
			$data .= '"ZipCode":"'. $rs["ZipCode"]     . '",';
			$data .= '"Notes":"'. $rs["Notes"]     . '"}';			
	}
	$data .="]";

	$link->close();

	echo($data);
?>