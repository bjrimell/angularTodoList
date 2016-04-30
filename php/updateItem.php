<?php 
	echo "Connecting to DB for update..";
	header("Access-Control-Allow-Origin: *");
	header("Content-Type: application/json; charset=UTF-8");
	echo "Connected to DB";

	$conn = new mysqli("localhost", "root", "", "TodoList");
	$output = "Connected to DB for update..";

	if(isset($_GET['Id'])){
		// Retrieve field from parameter and convert true/false to TINYINT 1/0 - this is what mySQL needs
		$Completed = $_GET['Completed'] ? '1' : '0';
		$Completed = ($Completed ? '1' : '0');
		$Id = $_GET['Id'];
		$query="update task set Completed='$Completed' where Id='$Id'";
		echo $query;
		$result = $conn->query($query) or die($conn->error.__LINE__);
		 
		$result = $conn->affected_rows;
		 
		$json_response = json_encode($result);
	}
?>