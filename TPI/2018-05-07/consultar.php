<!DOCTYPE>	<!-- SALVAR COMO consultar.php -->
<html>
	<head>
		<title>PHP com mysql</title>
		<meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
	</head>
  <body>
	<h3>Exibição da consulta de um item especifico</h3>
	<?php
		include_once('conexao.php');
		//criando o objeto mysql e conectando ao banco de dados
		$mysql = new BancodeDados();
		$mysql->conecta();
			
		// recuperando o valor digitado no formulario
		$codigo = $_POST['cdCliente'];

		// criando a linha do  SELECT
		$sqlconsulta = "SELECT tb_clientes.cdCliente, tb_produtos_clientes.cdCompra, tb_clientes.nmCliente, tb_produtos_clientes.vlCompra, tb_produtos_clientes.dtCompra
                        FROM tb_clientes
                        INNER JOIN tb_produtos_clientes
                        on tb_clientes.cdCliente = $codigo";	
		$dados = $mysql->sqlquery($sqlconsulta,'consulta.php'); /* execução do metod sqlquery() que esta em  
                                                                         conexao.php */
	 ?>
	<b>Código do cliente:</b> 
	<input type="text"  maxlength='80' style="width:550px" value="<?php echo $dados['cdCliente']; ?>" readonly ><br /><br />
	<b>Código da compra:</b> 
	<input type="number"  value="<?php echo $dados['cdCompra']; ?>" readonly ><br /><br />
	<b>Nome do cliente:</b> 
	<input type="text"  maxlength='80' style="width:550px" value="<?php echo $dados['nmCliente']; ?>" readonly ><br /><br />
	<b>Valor da compra: </b><br />
	<textarea  rows='3' cols='100' style="resize: none;" readonly ><?php echo $dados['vlCompra']; ?></textarea><br /><br />
	<b>Data da compra: </b> 
	<input type="date" value="<?php echo $dados['dtCompra']; ?>" readonly ><br /><br />
	<input type='button' onclick="window.location='consulta.php';" value="Voltar"> 
  </body>  
</html>
