<?php

if($_SERVER['SERVER_NAME']==='localhost'){
	include("_connexion_local.php");
}else{
	include("_connexion.php");
}




$response = $bdd->query('SELECT * FROM glo_wm ORDER BY wm_letter, wm_word ASC');
$out='';
$rows='';
while($datas = $response->fetch()){
	$rows .= "<tr><td><strong>".$datas['wm_word']."</strong></td><td>".$datas['wm_def']."</td></tr>\r\n";
}
	if($rows != ''){
		$out .= "<table >\r\n".$rows."</table>";
	}else{
		$out = "<p>Aucun résultat.</p>";
	}


	$response->closeCursor(); // Termine le traitement de la requête (fetch / execute)
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Glossaire Webmarketing</title>

	<style type="text/css">
		table, th, td {border: 1px solid black;}
		table tr > td:nth-child(1) {width:200px;}
		table tr > td:nth-child(2) {width:600px;}
	</style>
</head>
<body>
	<h1>Glossaire Webmarketing</h1>

	<?php echo $out; ?>




</body>
</html>