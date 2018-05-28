<!DOCTYPE>
	<head>
		<title>PHP com mysql</title>
		<meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
	</head>

	<body>
		<h3> Consultar um item especifico</h3>
		<!-- enviar os dados para consultar.php -->
		<form name="produto" action="consultar.php" method="post">
			
			<b>Nome:	</b>	<input type="text" name="client_name"/>
			<b>Doc:		</b>	<input type="text" name="client_doc"/>
			<b>Doc:		</b>	<input type="text" name="client_birthday"/>
			<b>Endereço:</b>	<input type="text" name="client_address"/>
			<b>Telefone:</b>	<input type="text" name="client_phone"/>
			
			<br/>
			<br/>
			
			<input type="submit" value="Ok"/>
			<input type="reset" value="Limpar"/>
			<input type='button' onclick="window.location='index.php';" value="Voltar"/>
		</form>
	</body>
