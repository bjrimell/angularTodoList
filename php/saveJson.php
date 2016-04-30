#!/usr/bin/php
<?php
$arr = array('a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5);
file_put_contents('jsonFile.json', json_encode($arr));
?>