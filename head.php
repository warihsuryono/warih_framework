<?php include_once "common.php"; ?>
<!DOCTYPE html>
<html lang="<?=$_COOKIE["locale"];?>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?=$__title_project;?></title>

	<link rel="stylesheet" href="styles/azmind_style.css">
    <link href="styles/app.css" rel="stylesheet">
    <link href="styles/footer-distributed-with-address-and-phones.css" rel="stylesheet">
	
	<script src="scripts/jquery-3.2.1.min.js"></script>
	<script src="public/bootstrap-4.0.0/js/bootstrap.min.js"></script>
	<script src="scripts/app.js"></script>
	<script src="scripts/jquery.js"></script>
	<script src="scripts/toastr.min.js"></script>
	
	<link rel="stylesheet" href="styles/toastr.min.css">
	<link rel="stylesheet" href="styles/animate.css">
	<link rel="stylesheet" href="styles/media-queries.css">
	<link rel="Shortcut Icon" href="images/logo.png">
	
	<script>
		function ajaxLoad(filename, content) {
			content = typeof content !== 'undefined' ? content : 'content';
			$('.loading').show();
			$.ajax({
				type: "GET",
				url: filename,
				contentType: false,
				success: function (data) {
					$("#" + content).html(data);
					$('.loading').hide();
				},
				error: function (xhr, status, error) {
					$("#" + content).html(xhr.responseText);
					$('.loading').hide();
				}
			});
		}
	</script>
</head>
<body style="margin:0px;padding:0px;">
	<style>
		.loading {
			background: lightgoldenrodyellow url('icons/processing.gif') no-repeat center 65%;
			height: 120px;
			width: 120px;
			position: fixed;
			border-radius: 4px;
			left: 50%;
			top: 50%;
			margin: -40px 0 0 -50px;
			z-index: 2000;
			display: none;
		}
		.content_area { padding:1px 20px 20px 20px;background-color:white; }
	</style>
	
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- Collapsed Hamburger -->
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
					<span class="sr-only">Toggle Navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<!-- Branding Image -->
				<a class="navbar-brand" href="?">
					<img src="images/logo.png" style="position:relative;top:-7px;height:40px;max-width: 200%;cursor:pointer;border:0px;" alt="<?=$__title_project;?>" title="<?=$__title_project;?>" onclick="window.location='index.php';">
				</a>
			</div>

			<div class="collapse navbar-collapse" id="app-navbar-collapse">
				<!-- Left Side Of Navbar -->
				<ul class="nav navbar-nav">
					&nbsp;
				</ul>

				<!-- Right Side Of Navbar -->
				<ul class="nav navbar-nav navbar-right">
					<?php if(!$__isloggedin){ ?>
						<li><a href="register">Register</a></li>
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
								Login <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<div class="col-sm-5 wow fadeInLeft animated">
									<style> .this_form_login input[type='text'], input[type='password']{padding:0px 10px 0px 10px;} </style>
									<style> .this_form_login input{height:40px;} </style>
									<?php $f->setAttribute("class='this_form_login'");?>
									<?=$f->start();?>
										<?=$t->start("style='color:#888;' ");?>
											<?=$t->row(["Username","&nbsp;&nbsp;&nbsp;".$f->input("username")]);?>
											<?=$t->row(["Password","&nbsp;&nbsp;&nbsp;".$f->input("password","","type='password'")]);?>
											<?=$t->row(["","&nbsp;&nbsp;&nbsp;".$f->input("login_action","Login","type='submit'","btn btn-link-1")]);?>
										<?=$t->end();?>
									<?=$f->end();?>
									</div>
								</li>
							</ul>
						</li>
					<?php } else { ?>
					
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
								<?=$__username;?> <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="?logout_action=1">Logout</a>
								</li>
							</ul>
						</li>
					<?php } ?>
				</ul>
			</div>
		</div>
	</nav>