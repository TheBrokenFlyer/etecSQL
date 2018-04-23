<!DOCTYPE>	<!-- SALVAR COMO incluir.php -->
<html>
	<head>
		<title> PHP com mysql</title>
		<meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
	</head>
	<body>
		<h3> Efetiva a inclusão dos dados </h3>
		<?php
			include_once('conexao.php');
			//criando o objeto mysql e conectando ao banco de dados
			$mysql = new BancodeDados();
			$mysql->con_connect();
			
			// recuperando os dados de inclusao.php
			//$id_client		= $_POST['id_client'];
			$client_name	= $_POST['client_name'];	
			$client_doc		= $_POST['client_doc'];	
			$client_salary	= $_POST['client_salary'];
			
			//diretório onde será gravado a imagem
			//$arquivo = isset($_FILES['arquivo'])?$_FILES['arquivo']:""; 
			//if(isset($_FILES['arquivo'])){
			///	$nome = $arquivo['name'];
			//	move_uploaded_file($_FILES['arquivo']['tmp_name'],'imagens/' . $nome);
			//}
			
			// criando a linha de INSERT
			$sqlinsert =  "insert into tb_client(client_name,client_doc,client_salary) values
								('{$client_name}','{$client_doc}','{$client_salary}');";
								
								echo $sqlinsert;
			
			// executando instrução SQL através do método sqlstring() que esta em conexao.php
			$resultado = $mysql->sqlstring($sqlinsert,"INCLUSÃO");
			
		?>
		<br /><br />
		<input type='button' onclick="window.location='index.php';" value="Voltar">
	</body>
</html>

