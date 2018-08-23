<?php
header("Access-Control-Allow-Origin: *");
include 'config.php';
$sql = "SELECT checklistId,ques,percent
FROM checklist
WHERE assetId=".$_GET["assetId"].";";
$resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
$data=array();
//echo $sql;
while( $rows = mysqli_fetch_assoc($resultset)) {
	$checkId=$rows["checklistId"];
	$temp='$(".cb'.$checkId.'").change(function (event) { event.preventDefault();$(".cb'.$checkId.'").not(this).prop("checked", false);});';
$data[]=array("checklistId"=> iconv("UTF-8", "UTF-8//IGNORE", $checkId),
		"ques"=>iconv("UTF-8", "UTF-8//IGNORE",$rows["ques"]), 
		"yesno"=>"<input type='checkbox' name='yesno".$rows["checklistId"]."' onmouseover='$temp' id='yesno".$rows["checklistId"]."' style='zoom:1.5;' class='cb".$checkId."' onclick='selectedyes(".$checkId.",".$rows["percent"].",this.checked);'>",
		"na"=>"<input type='checkbox' name='na".$rows["checklistId"]."' onmouseover='$temp' id='yesno".$rows["checklistId"]."' style='zoom:1.5;' class='cb".$checkId."' onclick='selectedna(".$checkId.",".$rows["percent"].",this.checked);'>",
		"partial"=>"<input type='checkbox' name='partial".$rows["checklistId"]."' onmouseover='$temp' id='yesno".$rows["checklistId"]."' style='zoom:1.5;' class='cb".$checkId."' onclick='selectedpartial(".$checkId.",".$rows["percent"].",this.checked);'>",
		"percent"=>$rows["percent"]
		);
}
$data[]= array("checklistId"=>'*********',
		"ques"=>"<center><input type='button' name='checklistId' value='submit' onclick='submitAsset()'>",
		"yesno"=>"**",
		"na"=>"**",
		"partial"=>"**",
		"percent"=>"0"		
		);
		
$results = array(
"data" => $data
);
echo json_encode($results);
?>

