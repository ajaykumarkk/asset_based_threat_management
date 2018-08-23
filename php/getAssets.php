<?php
 header("Access-Control-Allow-Origin: *");
include 'config.php';
$sql = "SELECT *
FROM assets
WHERE catId=".$_GET["catId"].";";
$result = $conn->query($sql);
$str='';
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc())
	{
		$str = $str.$row['assetId']."$".$row['assetName']."@#";
	}
		
		echo $str;
		
    
} else {
    echo "0 results";
}
?>