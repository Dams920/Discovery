<?PHP
/* extraction des données de la bdd
 * creation du pdf
 * envoi du pdf par email
 **/
//////////////////////////////////////////////////////////////////
// EXTRACTION DES DONNEES
//////////////////////////////////////////////////////////////////
if($_SERVER['SERVER_NAME']==='localhost'){
	include("_connexion_local.php");
}else{
	include("_connexion.php");
}

// SELECT MAX(sb_id) FROM `subscription`           ce SQl ne retourne que l'id la plus élevé
// SELECT * FROM `subscription` WHERE sb_id = ??   on ne connait pas l'id
// pour éviter de faire 2 requêtes, on les imbrique
$sql = "SELECT * FROM `subscription` WHERE sb_id = (SELECT MAX(sb_id) FROM `subscription`)";
//$sql = "SELECT * FROM `subscription` WHERE sb_id = 34";
$query = $bdd->prepare($sql); // on prépare le requête
$query->execute();            // on exécute la requête qui retourne le résultat dans la variable $query (PDOstatement)

// Ici on exploite le résultat en demandant un format précis
// https://www.php.net/manual/fr/pdostatement.fetch.php
$row = $query->fetch(PDO::FETCH_ASSOC); 

// VERIFICATION PAR AFFICHAGE \\\\\\\\\\\\\\\\\\\\\\\\\\\
print_r($row); // print_r permet d'afficher le tableau que retourne fetch
print '<hr>';
// on affiche les valeurs à l'aide de la variable dans laquelle est stocké le résultat de la requête
// Et comme elle contient un tableau on utilise les crochets pour capter les valeurs 
// On a choisile format FETCH_ASSOC ou associatif qui reprend le nom des champs de la table (bdd)

print 'id : '. $row['sb_id'] ."<br>\r\n"
     .'Prénom : '.$row['firstname'] ."<br>\r\n"
     .'Nom : '.$row['lastname'] ."<br>\r\n"
     .'E-mail : '.$row['email'] ."<br>\r\n"
     .'Code potal : '.$row['CP'] ."<br>\r\n"
     .'Téléphone : '.$row['phone'] ."<br>\r\n"
     .'Age : '.$row['age'] ."<br>\r\n"
     .'Score : '.$row['score'] ."<br>\r\n"
     .'Badge : '.$row['badge'];
print '<hr>';
 

if($row !=''){
	$pdfid = $row['sb_id'];
	$content= 'id : '. $row['sb_id'] ."\r\n"
	     .'Prénom : '.$row['firstname'] ."\r\n"
	     .'Nom : '.$row['lastname'] ."\r\n"
	     .'E-mail : '.$row['email'] ."\r\n"
	     .'Code potal : '.$row['CP'] ."\r\n"
	     .'Téléphone : '.$row['phone'] ."\r\n"
	     .'Age : '.$row['age'] ."\r\n"
	     .'Score : '.$row['score'] ."\r\n"
	     .'Badge : '.$row['badge'];
}else{
	$pdfid = '';
	$content ='';
}
 
//////////////////////////////////////////////////////////////////
//  CREATION DU PDF
//////////////////////////////////////////////////////////////////
$filename = $pdfid.'-file.pdf';
/*
require('tfpdf.php');

$pdf = new tFPDF();
$pdf->AddPage();

// Ajoute une police Unicode (utilise UTF-8)
$pdf->AddFont('DejaVu','','DejaVuSansCondensed.ttf',true);
$pdf->SetFont('DejaVu','',16);

$pdf->Write(8,$content);

// default I : http://fpdf.org/en/doc/output.htm
//$pdf->Output(F, 'temp/'. $filename , false);
//$pdf->Output('', $pdfid.'-file.pdf', false); 
$pdf->Output(D,$filename);
*/
print 'Link : <a href="temp/'.$filename.'">'.$filename.'</a>';
print '<hr>';

//////////////////////////////////////////////////////////////////
//  ENVOI DE L'EMAIL
//////////////////////////////////////////////////////////////////

if($content != ''){
	echo 'ok';	
	/*
	$cdate = date("Y-m-d H:i:s");
	$to = $row['email'];
	//$filename  voir ligne 78

	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;
	require('PHPMailer-master/src/Exception.php');
	require('PHPMailer-master/src/PHPMailer.php');
	require('PHPMailer-master/src/SMTP.php');

	$email = new PHPMailer();
	$email->From      = 'ics@cci.fr'; // à vérifier
	$email->FromName  = 'CCI';
	$email->Subject   = 'inscription jeux';
	$email->Body      =  $content;
	$email->AddAddress( "$to" );
	$email->AddAttachment( "$filename" , "$filename", 'base64', 'application/octet-stream' );

	if (!$email->Send()) {
	    echo 'Mailer Error: ' . $email->ErrorInfo;
	} else {
	    echo 'Message sent!';
	}*/
}else{
	echo 'ko';	
}

?>