<?php


//Génération de PDF avec la typographie POPPINS


// Connexion à la BDD (à personnaliser)
$link = @mysqli_connect('localhost','login','mot_de_passe','nom_base');
// Si base de données en UTF-8, il faudra utiliser la fonction utf8_decode() pour tous les champs de texte à afficher

// extraction des données à afficher dans le sous-titre 
$requete = "SELECT * FROM donnee_1 WHERE id_donnee_1='1'"; //TODO ajouter les donnees de la BDD
$result = @mysqli_query($link, $requete);
// tableau des résultats de la ligne > $data_donnee_1['nom_champ']
$data_donnee_1 = @mysqli_fetch_array($result);
@mysqli_free_result($result);

//Chemin pour le dossier font et librairie FPDF
define('FPDF_FONTPATH','font');
require('fpdf.php');

// Création de la class PDF
class PDF extends FPDF 
{
  // Header
  function Header()
    {
    // Linkblock pardessus le logo
    $this->Link(50,10,115,40,'www.demarretastory06.com');
    // Saut de ligne x mm
    $this->Ln(62);    
  }
  // Footer
  function Footer() 
  {
    // Positionnement à 1,5 cm du bas
    $this->SetY(-15);
    // Police Arial italique 8
    $this->SetFont('Poppins-regular','',9);
    // string, centré (C)
    $this->Cell(0,10,'ICS NICE',0,0,'C');
  }

function CorpsChapitre($fichier)
{
    // Lecture du fichier texte
    $txt = file_get_contents($fichier);
    // Typographie 12
    $this->SetFont('Poppins-regular','',11);
    // Sortie du texte justifié
    $this->MultiCell(0,7,utf8_decode($txt),0,'C');
    // Saut de ligne
    $this->Ln();

}
function AjouterChapitre($fichier)
{
    $this->CorpsChapitre($fichier);
}
}
                

// Instanciation de la classe dérivée
$pdf = new PDF();
$pdf->AddPage();
$pdf->AddFont('Poppins-regular', '', 'Poppins-regular.php');
$pdf->Image('background-image.jpg',0, 0,240);
$pdf->AliasNbPages();
$pdf->SetFont('Poppins-regular','',16);
$pdf->SetTitle('Mission Discovery','isUTF8');
$pdf->SetFillColor(230,230,230);
$pdf->SetTextColor(255,255,255);
$pdf->Image('logo.png',50,10,115);
$pdf->Cell(0,10, utf8_decode("M ou Mme, Mlle, NOM, prénom et age"),0,2,'C') ;
$pdf->Ln(20); // saut de ligne 20mm
$pdf->Image('badge1.png',85,85,40);
$pdf->Ln(30);
$pdf->Image('cci.png',175,278,30);
$pdf->AjouterChapitre('new1.txt');




// email stuff (change data below)
$to = "m.iangaev@ics-nice.com"; 
$from = "no_reply@ics-nice.com"; 
$subject = "Rapport d'aventurier"; 
$message = utf8_decode("<p>Une surprise t'attend à l'intérieur.</p>");

// a random hash will be necessary to send mixed content
$separator = md5(time());

// carriage return type (we use a PHP end of line constant)
$eol = PHP_EOL;

// attachment name
$filename = "Rapport d'aventurier.pdf";
// $pdf->Output();
// encode data (puts attachment in proper format)
$pdfdoc = $pdf->Output("", "S");
$attachment = chunk_split(base64_encode($pdfdoc));

// main header
$headers  = "From: ".$from.$eol;
$headers .= "MIME-Version: 1.0".$eol; 
$headers .= "Content-Type: multipart/mixed; boundary=\"".$separator."\"";

// no more headers after this, we start the body! //

$body = "--".$separator.$eol;
$body .= "Content-Transfer-Encoding: 7bit".$eol.$eol;
$body .= utf8_decode("Salut à toi jeune entrepreneur.").$eol;
$body .= "Ci-joint ton rapport d'aventurier.".$eol;

// message
$body .= "--".$separator.$eol;
$body .= "Content-Type: text/html; charset=\"iso-8859-1\"".$eol;
$body .= "Content-Transfer-Encoding: 8bit".$eol.$eol;
$body .= $message.$eol;

// attachment
$body .= "--".$separator.$eol;
$body .= "Content-Type: application/octet-stream; name=\"".$filename."\"".$eol; 
$body .= "Content-Transfer-Encoding: base64".$eol;
$body .= "Content-Disposition: attachment".$eol.$eol;
$body .= $attachment.$eol;
$body .= "--".$separator."--";

// send message
mail($to, $subject, $body, $headers);
/*
?>


