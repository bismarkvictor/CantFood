<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Tela de login</title>
		<link rel="stylesheet" href="css\estilologin.css">
	</head>
	<body>
			<img src="imagens/fastfood.jpg" class="fundo">
			<form method="post" action="login.php">
			<div class = "formulario">
					<img src="imagens/logo.png" width="150px" height="80px">
					<input type="text" placeholder="Usuario" id = "login" name="user" required/>
					<input type="password" placeholder="Senha" id = "senha" name="pass" required/>
					<button type = "submit"> Entrar </button>
			</div>
		</form>
	</body>
</html>