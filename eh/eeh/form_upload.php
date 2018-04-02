<html>
<head>
	<title> Exemplo de um formulário WEB com Upload de arquivo</title>
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
<!--Incluir enctype="multipart/form-data sem o qual o form não executa 
    Existem dois tipos de método de envio GET e POST, a diferença esta basicamente na capacidade de envio de dados,
    o GET é limitado a cerca de 2Kb de dados e POST não possui limites. Outra diferença é a forma de envio os dados
    anexados ao nome do script informado em ACTION, ja em POST os dados são enviados no corpo da mensagem que sera 
    enviada ao servidor. Via de regra utilize POST somente em situações em que os dados possuam tamanhos pequenos e-resize
    não causem nenhum problema de segurança (para o envio de login e senha utiize sempre GET)  	-->

 <form name="usr" enctype="multipart/form-data" method="post" action="upload.php">
	<table border="2" cellpadding="5" cellspacing="5">
		<tr>
		  <td height="30"><b>Arquivo:</b></td>
		  <td height="30" >
   <!--Campo hidden informa o tamanho maximo em bytes que o arquivo deve possuir Este elemento do 
   formulário deve sempre ser usado para evitar que usuários tenham o problema de ter que esperar 
   pela transferência de um arquivo para só então descobrir que ele era grande demais e a transferência 
   falhar. Fique ciente: é muito simples burlar esse parâmetro pelo lado do navegador, portanto 
   nunca dependa exclusivamente desse recurso para bloquear arquivos com maior tamanho. 
   Isso é um recurso meramente conveniente para usuários da aplicação no lado do cliente. 
   Os parâmetros do PHP (no servidor) para "maximum-size", no entanto, não podem ser burlados.-->
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
