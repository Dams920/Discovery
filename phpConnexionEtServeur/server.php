<?php
error_reporting(E_ALL);
ini_set('display_errors', 'On'); 
// ci-dessus pour afficher les erreurs (quand on est en Dev, on le retire en Prod)

// Le referer récupère l'URL du Post
$referer = $_SERVER["HTTP_REFERER"];
// Si le post x existe Alors maVariable = valeur du Post x[nom du champ]
if( isset($_POST['firstname']) ){ $firstname = $_POST['firstname']; }
if( isset($_POST['lastname']) ) { $lastname = $_POST['lastname']; }else{ $lastname=''; }
if( isset($_POST['email']) )    { $email = $_POST['email']; }
if( isset($_POST['cp']) )       { $cp = $_POST['cp']; }
if( isset($_POST['phone']) )    { $phone = $_POST['phone']; }
if( isset($_POST['age']) )      { $age = $_POST['age']; }
$score = 42;
$badge = 2;
$date = date('Y-m-d h:i:s');

/*
// N'afficher lignes 20-33 que pour vérifier le formulaire
// Sinon les redirections (header location) ne fonctionneront pas.
echo $referer. "<br>\r\n"; // d'où vient le post ?

echo  'Prénom : '. $firstname . "<br>\r\n" 
	    .'Nom : '. $lastname . "<br>\r\n" 
      .'Email : '. $email . "<br>\r\n" 
.'Code postal : '. $cp . "<br>\r\n" 
  .'Téléphone : '. $phone . "<br>\r\n" 
        .'Age : '. $age . "<br>\r\n" 
      ."Score :  $score<br>\r\n" 
      ."Badge :  $badge"; 
// Il faut toujours mettre les retours à la ligne \r\n entre double guillemets
// \r\n va à la ligne dans le code généré, pas dans HTML, pour cela il faut baliser avec un <br> ;-)
*/

// Les champs firstname et cp sont obligatoire (required) si ils ont vide on redirige vers le formulaire
if($lastname != ''){
	// si ces champs sont plein on insère dans la bdd
	// on charge le PDO
	if($_SERVER['SERVER_NAME']==='localhost'){
		include("_connexion_local.php");
	}else{
		include("_connexion.php");
	}
	//le SQL pour insérer les données
	$sql = "INSERT INTO subscription (sb_id, firstname, lastname, email, CP, phone, age, creation_date, score, badge) 
	             VALUES (0, '$firstname', '$lastname', '$email', '$cp', $phone, $age, '$date', $score, $badge)";
	$query = $bdd->query($sql);

	if($query !== false) {
		// on repart vers le formulaire
		header("Location: $referer?r=g"); 
		// on ajoute r=g en variable d'URL pour response = good
	}else{
		header("Location: $referer?r=b");
		// on ajoute r=b en variable d'URL pour response = bad
		exit;
	}
}else{
	//echo '<br><br>ça merde';
	header("Location: $referer");
	exit;
}

?>