<?php 
	echo "Connecting to DB for insert..";
	header("Access-Control-Allow-Origin: *");
	header("Content-Type: application/json; charset=UTF-8");
	echo "Connected to DB";

	$conn = new mysqli("localhost", "root", "", "TodoList");
	$output = "Connected to DB for update..";

	if(isset($_GET['Title'])){
		// Retrieve field from parameter and convert true/false to TINYINT 1/0 - this is what mySQL needs
		$Completed = $_GET['Completed'] ? '1' : '0';
		$Completed = ($Completed ? '1' : '0');
		$Title = $_GET['Title'];
		$query="insert into task(Title, Completed) values('$Title', '$Completed')";
		echo $query;
		$result = $conn->query($query) or die($conn->error.__LINE__);
		 
		$result = $conn->affected_rows;
		 
		$json_response = json_encode($result);
	}
?>