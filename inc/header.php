<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Cant Food</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="<?php echo BASEURL; ?>css/bootstrap.min.css">
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="<?php echo BASEURL; ?>css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
</head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="<?php echo BASEURL; ?>inicio.php" class="navbar-brand" id="home">
              <img src="/../CantFood/imagens/logohorizontal.png" width="180px"/>
          </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
                <!--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    Gerenciar <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">-->
                    <li><a href="<?php echo BASEURL; ?>customers">CLIENTES</a></li>
                    <li><a href="<?php echo BASEURL; ?>fornecedores">FORNECEDORES</a></li>
                    <li><a href="<?php echo BASEURL; ?>produtos">PRODUTOS</a></li>
                    <li><a href="<?php echo BASEURL; ?>pedidos">PEDIDOS</a></li>
                    <!-- <li><a href="<?php echo BASEURL; ?>#">RELATÓRIOS</a></li> -->
                   
                <!--</ul>-->
            </li>

          </ul>
          <div>
            <a href="_dao/logout.php">
                <img src="/../CantFood/imagens/Sair02.png" width="30px" style="margin-left: 380px; margin-top: 10px"/>                                  
            </a>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <main class="container">