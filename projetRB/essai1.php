<?php

require('C:/laragon/www/projetRB/fpdf182/fpdf.php');

class PDF extends FPDF
{
// En-tête
function Header()
{
    // Logo
    $this->Image('logo.png',10,6,30);
    // Police Arial gras 15
    $this->SetFont('Arial','B',15);
    // Décalage à droite
    $this->Cell(50);
    // Titre
    $this->Cell(100,10,'Formulaire/Brochure',1,0,'C');
    // Saut de ligne
    $this->Ln(20);
}

// Pied de page 
function Footer()
{
    // Positionnement à 1,5 cm du bas
    $this->SetY(-15);
    // Police Arial italique 8
    $this->SetFont('Arial','I',8);
    // Numéro de page
    $this->Cell(0,10,'Copyright ou contact',0,0,'C');
}
}

$data = "nom" ;

// Instanciation de la classe dérivée
	$pdf = new PDF();
	$pdf->AliasNbPages();
	$pdf->AddPage();
	$pdf->SetFont('Times','',12);
	$pdf->SetTitle('Mission Discovery','isUTF8');
	$pdf->SetFillColor(13,250,5);
	$pdf->Cell(0,10, "Salut à toi jeune entrepreneur",1,2,'C','true') ;
	for($i=1;$i<=10;$i++)
		{
    	$pdf->Cell(0,10, $data .$i,0,1);
		}	
$pdf->Output();
