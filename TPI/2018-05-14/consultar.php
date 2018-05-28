<!DOCTYPE>
	<head>
		<title>PHP	com	mysql</title>
		<meta	http-equiv="Content-Type"content="text/html;charset=utf-8"/>
	</head>
	
	<body>
		<h3>Exibição da consulta de um item especifico</h3>
		<?php
			include_once('conexao.php');
			//connecting to the database
			$mysql	= new BancodeDados();
			$mysql->conecta();
				
			//getting input
			$user	= $_POST['client_username'];
			$pass	= $_POST['client_password'];

			//querry select
			$sqlconsulta = "
				select	id_client,	client_username,	client_name,	client_address,	client_phone
					from	tb_clients
					where	client_username = '$user'
					and		client_password = '$pass'";
			$dados	= $mysql->sqlquery($sqlconsulta,'consulta.php');	/*	execução do metod sqlquery() que está em conexao.php	*/
		?>
		
		/**/<br/>
		<b>Client ID:		</b>	
		<input	type="text"		maxlength='32'						value="<?php	echo $dados['id_client'];		?>"	readonly /><br/>
		/**/<br/>
		<b>Client username:	</b>	
		<input	type="text"		maxlength='32'						value="<?php	echo $dados['client_username'];	?>"	readonly /><br/>
		/**/<br/>
		<b>Client name:		</b>	
		<input	type="text"		maxlength='32'						value="<?php	echo $dados['client_name'];		?>"	readonly /><br/>
		/**/<br/>
		<b>Client address:	</b>	
		<input	type="text"		maxlength='32'	style="width:550px"	value="<?php	echo $dados['client_address'];	?>"	readonly /><br/>
		/**/<br/>
		<b>Client phone:	</b>
		<input	type="number"	maxlength='32'						value="<?php	echo $dados['client_phone'];	?>"	readonly /><br/>
		/**/<br/>
		
		<input	type="button"	onclick="window.location='consulta.php';"	value="Voltar"/>	
	</body>
