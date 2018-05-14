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
			$codigo	= array($_POST['client_name'],$_POST['client_address');

			//querry select
			$sqlconsulta = "
				insert into tb_clients(client_name, client_birthday, client_address,  values
					('$codigo[0]', '$codigo[1]', '$codigo[2]', '$codigo[3]', 'codigo[4]');
			";	
			$dados	= $mysql->sqlquery($sqlconsulta,'insercao_entrada.php');	/*	execução do metod sqlquery() que está em conexao.php	*/
		?>
		
		/**/
		<b>Client ID:		</b>	
		<input	type="text"	maxlength='11'						value="<?php	echo $dados['id_client'];		?>"	readonly /><br/>
		/**/
		<b>Client name		</b>	
		<input	type="text"										value="<?php	echo $dados['client_name'];		?>"	readonly /><br/>
		/**/
		<b>Client birthday	</b>	
		<input	type="text"										value="<?php	echo $dados['client_birthday'];		?>"	readonly /><br/>
		/**/
		<b>Client address:	</b>	
		<input	type="text"	maxlength='80'	style="width:550px"	value="<?php	echo $dados['client_address'];	?>"	readonly /><br/>
		/**/
		<b>Client phone:	</b>
		<input	type="number"									value="<?php	echo $dados['client_phone'];	?>"	readonly /><br/>
		
		<input	type="button"	onclick="window.location='consulta.php';"	value="Voltar"/>	
	</body>		
</html>
