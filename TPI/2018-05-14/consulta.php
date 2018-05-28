<!DOCTYPE>
	<head>
		<title>PHP com mysql</title>
		<meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
	</head>
	
	<body>
		<h3> Consultar um item especifico</h3>
		<!-- enviar os dados para consultar.php -->
		<form name="produto" action="consultar.php" method="post">
			
			<b>Nome de usuário:</b>	<input type="text"		name="client_username"/><br/>
			<b>Senha:</b>			<input type="password"	name="client_password"/><br/>
			
			<br/>
			<br/>
			
			<input type="submit" value="Ok"/>
			<input type="reset" value="Limpar"/>
			<input type='button' onclick="window.location='index.php';" value="Voltar"/>
		</form>
	</body>
