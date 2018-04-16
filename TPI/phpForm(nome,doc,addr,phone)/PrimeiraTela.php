<html>
	<head>
		<style>
		.error {color: #FF0000;}
		</style>
	</head>
<body>	

<?php
// definindo variaveis vazias
$clName	 = $clDoc	= $clAddress	= $clPhone	= '';
$clNameE = $clDocE = $clAddressE = $clPhoneE = '';
$errorCode = "Campo obrigatório";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

	//validate clName
	if (empty($_POST["clName"])) {
		$clNameE = $errorCode;
	} else {
		//$nome = Inserir_input($_POST["name"]); //Próxima Aula
		// check if name only contains letters and whitespace
	}
	
	//validate clDoc
	if (empty($_POST["clDoc"])) {
		$clDocE = $errorCode;
	} else {}
	
	//validate clAddress
	if (empty($_POST["clAddress"])) {
		$clAddressE = $errorCode;
	} else {}
	
	if (empty($_POST["clPhone"])) {
		$clPhoneE = $errorCode;
	} else {}
}

function Inserir_input($data) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}
?>

<h2>Exemplo de validação</h2>
<p>
	<span class="error">* Campo obrigatorio</span>
</p>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">	
	Name:		<input type="text" name="clName"	value="<?php echo $clName;?>"/>		<br/>
	Doc:		<input type="text" name="clDoc"		value="<?php echo $clDoc;?>"/>		<br/>
	Address:	<input type="text" name="clAddress"	value="<?php echo $clAddress;?>"/>	<br/>
	Phone:		<input type="text" name="clPhone"	value="<?php echo $clPhone;?>"/>		<br/>
	
	<span class="errorCode">* <?php echo $errorCode;?></span>
	
	<br/>
	
	<input type="submit" name="submit" value="Submit"/>	
</form>

<?php
echo "<h2>Valor que você digitou:</h2>";
echo $clName,'<br/>',$clDoc,'<br/>',$clAddress,'<br/>',$clPhone;
?>

</body>
</html>