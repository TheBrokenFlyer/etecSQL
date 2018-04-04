<!DOCTYPE html>
	<head>
		<!-- HTML 4 -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<!-- HTML5 -->
		<meta charset="utf-8"/>
		
		<title>Enviando E-mail com PHP - DevMedia</title>
		<link rel="stylesheet" type="text/css" href="estilo.css">
	</head>
	
	
	<body colspan="1">
		
		<div id="contato_form">
			<form action="enviar.php" name="form_contato" method="post" >
			  
				<p class="titulo">Formulario <small class="ast">*Campos Obrigatorios</small></p>
				
				<table>
					<tr>
						<td>
							Nome:<sup class="ast">*</sup>
						</td>
						
						<td>
							<input type="text" name="nome" maxlength="40" />
						</td>
					</tr>
					
					<tr>
						<td>
							E-mail:<sup class="ast">*</sup>
						</td>
						
						<td>
							<input type="email" name="email" maxlength="30" />
						</td>
					</tr>
					
					<tr>
						<td>
							Telefone:<sup class="ast">*</sup>
						</td>
						
						<td>
							<input type="text" name="telefone" maxlength="14" />
						</td>
					</tr>
					<tr>
						<td>
							Estado:<sup class="ast">*</sup>
						</td>
						
						<td>
							<select name="escolhas" class="campo_input">
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="I">I</option>
								<option value="J">J</option>
								<option value="K">K</option>
								<option value="L">L</option>
								<option value="M">M</option>
								<option value="N">N</option>
								<option value="O">O</option>
								<option value="P">P</option>
								<option value="Q">Q</option>
								<option value="R">R</option>
								<option value="S">S</option>
								<option value="T">T</option>
								<option value="U">U</option>
								<option value="V">V</option>
								<option value="W">W</option>
								<option value="X">X</option>
								<option value="Y">Y</option>
								<option value="Z">Z</option>
								<option value="AA">AA</option>
								<option value="AB">AB</option>
								<option value="AC">AC</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Mensagem:<sup class="ast">*</sup></td>
						
						<td>
							<textarea name="msg" cols="16" rows="5"></textarea>
						</td>
					</tr>
					
					<tr align="right";>
						<td colspan="2">
							<input type="reset" class="sub" value="Limpar" />
							<input type="submit" class="sub" value="Enviar" />
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="right">
							<small class="ast">* Campos obrigatorios</small>
						</td>
					</tr>
				</table>
				
			</form>
		</div>
		
	</body>