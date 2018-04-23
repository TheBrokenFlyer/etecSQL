<?php // SALVAR COMO conexao.php
class BancodeDados {
    // Nas linhas abaixo você poderá colocar as informações do Banco de Dados.
    private	$host	= "localhost"; 	// Nome ou IP do Servidor
    private	$user	= "root"; 		// Usuário do Servidor MySQL
    private	$senha	= ""; 		// Senha do Usuário MySQL
    private	$banco	= "eh"; 		// Nome do seu Banco de Dados
    public	$con;
	
	// método responsável para conexão a base de dados
	function con_connect() {
        $this->con = @mysqli_connect($this->host,$this->user,$this->senha, $this->banco);
	    // Conecta ao Banco de Dados
        if(!$this->con){
      		// Caso ocorra um erro, exibe uma mensagem com o erro
			die ("	error: connection failure.");
        }
    }
	
	// método responsável por fechar a conexão
	function con_close() {
		mysqli_close($this->con);
		return;
	}
	
	// método para executar o SELECT (consultar.php, verexclusao.php, veralteracao.php)
	function sqlquery($string,$caminho){
		// executando instrução SQL
		$resultado = @mysqli_query($this->con, $string);
		if (!$resultado) {
			echo '<input type="button" onclick="window.location='."'index.php'".';" value="Voltar"><br /><br />';
			die('<b>Query Inválida:</b>' . @mysqli_error($this->con)); 
		} else {
			$num = @mysqli_num_rows($resultado);
			if ($num==0){
				echo "<b>Código: </b>não localizado !!!!<br /><br />";
				echo '<input type="button" onclick="window.location='."'$caminho'".';" value="Voltar"><br /><br />';
				exit;		
			}else{
				$dados=mysqli_fetch_array($resultado);
			}
		} 
		$this->con_close; // chama o método que fecha a conexão
		return $dados;
	}
	
	// método para executar o INSERT, UPDATE e DELETE (incluir.php)
	function sqlstring($string,$texto){
		$resultado = @mysqli_query($this->con, $string);
		if (!$resultado) {
			echo '<input type="button" onclick="window.location='."'index.php'".';" value="Voltar"><br /><br />';
			die('<b>Query Inválida:</b>' . @mysqli_error($mysql->con)); 
		} else {
			echo "<br/><b>$texto </b> - Realizada com  Sucesso";
		}
		$this->con_close(); // chama o método que fecha a conexão
		return;
	}
 }  
?>