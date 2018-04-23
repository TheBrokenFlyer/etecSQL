<!DOCTYPE>	<!-- SALVAR COMO inclusao.php -->
<html>
	<head>
		<title> CRUD - PHP com mysql</title>
		<meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
	</head>
	<body>
	<h1> Inclusão de novos registros no BD inclusive com upload de imagem </h1>
	<!-- Envia os dados para inclui.php -->
	<form name="form_client" action="incluir.php" method="post" enctype = "multipart/form-data">
	    <h3> Digite os valores que serão incluidos no banco </h3>
		
		<b>Nome:		</b>
		<input type="text" name="client_name" maxlength='80' style="width:550px"/>
		
		<br/>
		<br/>
		
		<b>Documento:	</b>
		<input type="text" name="client_doc" maxlength='80' style="width:550px"/>
		
		<br/>
		<br/>
		
		<b>Salário:		</b>
		<input type="text" name="client_salary" maxlength='80' style="width:550px"/>
		
		<br/>
		<br/>
		
		<input type="submit" value="Ok"/>
		<input type="reset" value="Limpar"/>
		<input type='button' onclick="window.location='index.php';" value="Voltar"/>
	</form>
  </body>
</html>
