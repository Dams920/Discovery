<?php
	if(isset($_GET['r'])){$r = $_GET['r'];}else{$r='';}
	switch($r){
		case 'g': $response = 'Success'; $class = 'success'; break;
		case 'b': $response = 'Failed';  $class = 'failed';  break;
		case 'r': $response = 'Remplissez les champs obligatoires (nom).'; break;
		default : $response = '...'; 
	}

/*
		http://patorjk.com/software/taag/#p=display&f=Bolger&t=Crypto%20Beasty


 e88~-_                             d8                  888~~\                               d8           
d888   \ 888-~\ Y88b  / 888-~88e  _d88__  e88~-_        888   |  e88~~8e    /~~~8e   d88~\ _d88__ Y88b  / 
8888     888     Y888/  888  888b  888   d888   i       888 _/  d888  88b       88b C888    888    Y888/  
8888     888      Y8/   888  8888  888   8888   |       888  \  8888__888  e88~-888  Y88b   888     Y8/   
Y888   / 888       Y    888  888P  888   Y888   '       888   | Y888    , C888  888   888D  888      Y    
 "88_-~  888      /     888-_88"   "88_/  "88_-~        888__/   "88___/   "88_-888 \_88P   "88_/   /     
                _/      888                                                                       _/      

*/


?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Formulaire</title>
	<style type="text/css">
		.registration-form {width:400px;}
		form {}
		fieldset {background-color:#F9F9F9; border-radius: 5px; }
		legend {font-size: 20px;}
		label {}
		input {width:100%; padding: 12px 20px; margin: 8px 0; box-sizing: border-box; border-radius: 5px;}
		input[type=text] {}
		input[type=email] {}
		input[type=password] {}
		input[type=submit] {
			background-image: linear-gradient(#f8e1a8, #eebb39); 
			border-radius: 5px; font-size: 16px; border:1px solid #c89411;
		}
		input[type=submit]:hover {
			background-image: linear-gradient(#f6d890, #ecb321); 
		}
		.success {background-color: lime;}
		.failed {background-color: tomato;}
	</style>
</head>
<body>

<h1>Formulaire</h1>
	<div class="registration-form">
		<form action="server.php" method="post">
			<fieldset>
				<legend>Inscription</legend>
				
				<label for="firstname">Prénom :</label>
				<input type="text" id="firstname" name="firstname" value="" placeholder="Prénom">

				<label for="lastname">Nom :</label>
				<input type="text" id="lastname" name="lastname" value="" placeholder="Nom" required>

				<label for="email">E-mail :</label>
				<input type="email" id="email" name="email" value="" placeholder="E-mail">

				<label for="cp">Code postal :</label>
				<input type="text" id="cp" name="cp" value="" placeholder="06000">

				<label for="phone">Téléphone :</label>
				<input type="text" id="phone" name="phone" value="" placeholder="0000000000">

				<label for="age">Age :</label>
				<input type="text" id="age" name="age" value="" placeholder="00">

				<input type="submit" value="Envoyez">
			</fieldset>
		</form>
	</div>
	<div class="response <?PHP echo $class;?>"><p><?PHP echo $response;?></p></div>

	
</body>
</html>