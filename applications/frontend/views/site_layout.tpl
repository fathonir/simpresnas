{doctype('html5')}
<html lang="id">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Simpresnas</title>
		{if ENVIRONMENT == 'development'}
			<link href="{base_url('vendor/twbs/bootstrap/dist/css/bootstrap.css')}" rel="stylesheet"/>
		{/if}
		{if ENVIRONMENT == 'production'}
			<link href="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
			<link href="https://fonts.googleapis.com/css?family=Oswald|Comfortaa|Nunito+Sans:400,700" rel="stylesheet">
		{/if}
		<link href="{base_url('assets/css/bootstrap-cerulean.min.css')}" rel="stylesheet"/>
		<link href="{base_url('assets/css/site.css')}" rel="stylesheet"/>
		{block name='head'}
		{/block}
	</head>
	<body>
		<!-- Fixed navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					{if $ci->session->user}
						<a class="navbar-brand" href="{site_url('home')}">Simpresnas</a>
					{else}
						<a class="navbar-brand" href="{base_url()}">Simpresnas</a>
					{/if}
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					{if $ci->session->user}
						<ul class="nav navbar-nav">
							{if $ci->session->program_id == PROGRAM_KBMI}
							<li><a href="{site_url('proposal-kbmi')}">Proposal KBMI</a></li>
							{/if}
							{if $ci->session->program_id == PROGRAM_STARTUP}
							<li><a href="{site_url('proposal-startup')}">Usulan Startup</a></li>
							{/if}
							{if $ci->session->program_id == PROGRAM_EXPO}
							<li>
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Expo KMI<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="{site_url('expo')}">Daftar Expo KMI</a></li>
								</ul>
							</li>
							{/if}
							{if $ci->session->program_id == PROGRAM_WORKSHOP}
							<li><a href="{site_url('home')}">Workshop</a></li>
							<li><a href="{site_url('workshop')}">Pendaftaran Peserta</a></li>
							<li><a href="{site_url('workshop/jadwal')}">Jadwal &amp; Lokasi</a></li>
							{/if}
							<li><a href="{site_url('site/download')}">Download</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							{if $ci->session->user}
								<li>
									<a href="{site_url('auth/logout')}">Logout ({$ci->session->perguruan_tinggi->nama_pt})</a>
								</li>
							{/if}
						</ul>	
					{else}
						<ul class="nav navbar-nav">
							<li><a href="{site_url()}">Halaman depan</a></li>
							<li><a href="{site_url('auth/login')}">Login</a></li>
						</ul>
					{/if}

				</div><!--/.nav-collapse -->
			</div>
		</nav>

		<!-- Begin page content -->
		<div class="container">
			{block name='content'}
			{/block}
		</div>

		<footer class="footer">
			<div class="container">
				<p class="text-center">&copy; 2020 Pusat Prestasi Nasional<br/>
					Gedung D Lt 7, Jl. Jenderal Sudirman, Pintu I Senayan, Daerah Khusus Ibukota Jakarta 10270, Indonesia<br/>
                    Email: <a href="mailto:puspresnas@kemdikbud.go.id">puspresnas@kemdikbud.go.id</a></p>
			</div>
		</footer>

		{if ENVIRONMENT == 'development'}
			<script src="{base_url('vendor/components/jquery/jquery.js')}"></script>
			<script src="{base_url('vendor/twbs/bootstrap/dist/js/bootstrap.js')}"></script>
		{/if}
		{if ENVIRONMENT == 'production'}
			<script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.12.4.min.js"></script>
			<script src="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.7/bootstrap.min.js"></script>
		{/if}
		{block name='footer-script'}
		{/block}
	</body>
</html>