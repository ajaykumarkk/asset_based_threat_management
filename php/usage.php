<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>REPORT</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
	<?php
	include("phpReportGen.php");
	include("config.php");
	$reportId = $_GET["reportId"];
	
	
	$sql="select title,descrip from report where reportId=$reportId";
	$res = $conn->query($sql);
	$row = $res->fetch_assoc();
	echo "<h3> Title : ". $row['title']."   Description : ".$row['descrip']."</h3>";
	
	$sql="select assets.assetId,assetName from checklist,assets where checklistId in (SELECT `checklistId` FROM `reportdetails` WHERE reportId = $reportId) and assets.assetId = checklist.assetId GROUP BY assets.assetId;";
	$res1 = $conn->query($sql);
	if ($res1->num_rows > 0) {
    // output data of each row
	
    while($row12 = $res1->fetch_assoc())
	{	
		//print_r($row12);
		echo "<br/>Asset : ".$row12['assetName'];
		$sql3="SELECT sum(reportdetails.percent) from reportdetails,checklist where reportdetails.checklistId = checklist.checklistId and checklist.assetId = ".$row12['assetId']." and reportId = ".$reportId;
		$res3 = $conn->query($sql3);
		$r=$res3->fetch_assoc();
		echo " Percentage secure : <strong>".round($r["sum(reportdetails.percent)"],2)."</strong>";	
		$sql="SELECT reportdetails.checklistId,ques,reportdetails.percent from reportdetails,checklist where reportdetails.checklistId = checklist.checklistId and checklist.assetId = ".$row12['assetId']." and reportId = ".$reportId;
		$res = $conn->query($sql);
		$prg = new phpReportGenerator();
		$prg->width = "100%";
		$prg->cellpad = "0";
		$prg->cellspace = "0";
		$prg->border = "0";
		$prg->header_color = "#666666";
		$prg->header_textcolor="#FFFFFF";
		$prg->body_alignment = "left";
		$prg->body_color = "#CCCCCC";
		$prg->body_textcolor = "#800022";
		$prg->surrounded = '2';
		$prg->mysql_resource = $res; //<---
		$prg->title = "Test Table";
		$prg->generateReport();
		
		
	}
		
		
		
    
	} 
	
	
	?>
	<br/>
	<center><input type="button" value='New Report' onclick="window.location='../report.html'"/></center>
</body>
</html>
