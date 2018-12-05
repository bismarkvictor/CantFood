
<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>

<?php include(HEADER_TEMPLATE); ?>
<?php $db = open_database(); ?>
<h1>MENU</h1>
<hr />

<?php if ($db) : ?>

<div class="row">

	<div class="col-xs-6 col-sm-3 col-md-2">
		
		<a href="customers" class="btn btn-default">
			
			<div class="row">
				<div class="col-xs-12 text-center">
				</div>
				<div class="col-xs-12 text-center">
					
					<p>Clientes</p>
						<img src="imagens/Clientes02.png" width="90px"> 					 				
				</div>
				
			</div>
		</a>
	</div>

	<div class="col-xs-6 col-sm-3 col-md-2">
		<a href="Fornecedores" class="btn btn-default">
			<div class="row">
				<div class="col-xs-12 text-center">
					
				</div>
				<div class="col-xs-12 text-center">
					<p>Fornecedores</p>
					<img src="imagens/Fornecedores02.png" width="90px"> 
				</div>
			</div>
		</a>
	</div>

	<div class="col-xs-6 col-sm-3 col-md-2">
		<a href="Produtos" class="btn btn-default">
			<div class="row">
				<div class="col-xs-12 text-center">
					</div>
				<div class="col-xs-12 text-center">
					<p>Produtos</p>
					<img src="imagens/Produtos02.png" width="90px">
					
				</div>
			</div>
		</a>
	</div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
		<a href="Pedidos" class="btn btn-default">
			<div class="row">
				<div class="col-xs-12 text-center">
					
				</div>
				<div class="col-xs-12 text-center"> 
					<p>Pedidos</p>
					<img src="imagens/Pedidos02.png" width="90px"> 
				</div>
			</div>
		</a>
	</div>

	 <div class="col-xs-6 col-sm-3 col-md-2">
	<!-- <a href="Pedidos" class="btn btn-default"> -->
			<div class="row">
				<div class="col-xs-12 text-center">
					
				</div>
				<div class="col-xs-12 text-center">
					<p>Relatórios</p>
					<img src="imagens/Relatorios01.png" width="90px"> 
				</div>
			</div>
		</a>
	</div>

</div>

                                
            </a>

<?php else : ?>
	<div class="alert alert-danger" role="alert">
		<p><strong>ERRO:</strong> Não foi possível Conectar ao Banco de Dados!</p>
	</div>

<?php endif; ?>

<?php include(FOOTER_TEMPLATE); ?>