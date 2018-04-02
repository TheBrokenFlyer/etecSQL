<html>
<head>
	<title> Exemplo de um formul�rio WEB com Upload de arquivo</title>
</head>
<body>
<table border="0" cellpadding="3" cellspacing="0" width="100%">
	<tr>
		  <td height="30" bgcolor="#8CDAFF">
				<b> Upload de Arquivo</b>
		  </td>
		  <td align="right" bgcolor="#8CDAFF">
		    <?=date("d-m-Y H:i:s")?>&nbsp;
		  </td>
	</tr>
</table>
<!--Incluir enctype="multipart/form-data sem o qual o form n�o executa 
    Existem dois tipos de m�todo de envio GET e POST, a diferen�a esta basicamente na capacidade de envio de dados,
    o GET � limitado a cerca de 2Kb de dados e POST n�o possui limites. Outra diferen�a � a forma de envio os dados
    anexados ao nome do script informado em ACTION, ja em POST os dados s�o enviados no corpo da mensagem que sera 
    enviada ao servidor. Via de regra utilize POST somente em situa��es em que os dados possuam tamanhos pequenos e-resize
    n�o causem nenhum problema de seguran�a (para o envio de login e senha utiize sempre GET)  	-->

 <form name="usr" enctype="multipart/form-data" method="post" action="upload.php">
	<table border="2" cellpadding="5" cellspacing="5">
		<tr>
		  <td height="30"><b>Arquivo:</b></td>
		  <td height="30" >
   <!--Campo hidden informa o tamanho maximo em bytes que o arquivo deve possuir Este elemento do 
   formul�rio deve sempre ser usado para evitar que usu�rios tenham o problema de ter que esperar 
   pela transfer�ncia de um arquivo para s� ent�o descobrir que ele era grande demais e a transfer�ncia 
   falhar. Fique ciente: � muito simples burlar esse par�metro pelo lado do navegador, portanto 
   nunca dependa exclusivamente desse recurso para bloquear arquivos com maior tamanho. 
   Isso � um recurso meramente conveniente para usu�rios da aplica��o no lado do cliente. 
   Os par�metros do PHP (no servidor) para "maximum-size", no entanto, n�o podem ser burlados.-->
		  	<input type="hidden" name="MAX_FILE_SIZE" value="100000">
			<!--Criar campo com o tipo input type=file que define o tipo de entrada como arquivo  -->
			<input type="FILE" name="ARQUIVO" size="50">
		  </td>
		</tr>
		<tr>
		  <td colspan=2 align>
			<input type="submit"  value=" Enviar o Arquivo">
		  </td>
		</tr>
	</table>
</form>

</body>
</html>
