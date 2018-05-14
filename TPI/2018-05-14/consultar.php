<!DOCTYPE>	<!--	SALVAR COMO consultar.php	-->
<html>
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
			$codigo	= $_POST['client_name'];

			//querry select
			$sqlconsulta = "
				select	id_client,	client_name,	client_address,	client_phone
					from	tb_clients
					where	client_name like '%$codigo%'
			";	
			$dados	= $mysql->sqlquery($sqlconsulta,'consulta.php');	/*	execução do metod sqlquery() que está em conexao.php	*/
		?>
		
		/**/
		<b>Client	ID:		</b>	
		<input	type="text"	maxlength='11'						value="<?php	echo $dados['id_client'];		?>"	readonly /><br/>
		/**/
		<b>Client	name:		</b>	
		<input	type="text"										value="<?php	echo $dados['client_name'];		?>"	readonly /><br/>
		/**/
		<b>Client	address:	</b>	
		<input	type="text"	maxlength='80'	style="width:550px"	value="<?php	echo $dados['client_address'];	?>"	readonly /><br/>
		/**/
		<b>Client	phone:		</b>
		<input	type="number"									value="<?php	echo $dados['client_phone'];	?>"	readonly /><br/>
		
		<input	type="button"	onclick="window.location='consulta.php';"	value="Voltar"/>	
	</body>		
</html>
