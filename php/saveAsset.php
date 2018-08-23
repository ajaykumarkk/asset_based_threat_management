<?php
header("Access-Control-Allow-Origin: *");
include 'config.php';
$data = json_decode(stripslashes($_POST['suggest']));
$reportId = json_decode(stripslashes($_POST['reportId']));
$per = json_decode(stripslashes($_POST['listpercent']));
for($i=0;$i<count($data);$i++) 
{
	if($data[$i]!= 0 && $per[$i]!=0)
	{
		$sql = "INSERT INTO `reportdetails` (`sno`, `reportId`, `checklistId`, `percent`) VALUES (NULL, '$reportId', '$data[$i]','$per[$i]');";
		$result = $conn->query($sql);
		echo $sql."<br/>";
	}
}


?>
