<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "root", "", "TodoList");

$result = $conn->query("SELECT Title, Completed FROM Task");

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {$outp .= ",";}
    $outp .= '{"Title":"'  . $rs["Title"] . '",';
    $outp .= '"TCompleted":"' . ($rs["Completed"] ? 'true' : 'false')        . '"}'; // parsing the 0/1 from MySql as true/false so it can be parsed as a JSON file.
}
$outp ='{"records":['.$outp.']}';
$conn->close();

echo($outp);
?>