<?php 
header("Access-Control-Allow-Origin: *");
include 'config.php';
$sql = "INSERT INTO `report` (`reportId`, `userId`, `credtm`, `title`, `descrip`) VALUES (NULL, '1', now(), '".$_GET['title']."', '".$_GET['desc']."');";
$result = $conn->query($sql);
$last_id = $conn->insert_id;
echo $last_id;

?>