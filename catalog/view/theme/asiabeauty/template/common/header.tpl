<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo htmlentities($description, ENT_QUOTES); ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta name="yandex-verification" content="6810beeea2b6c284" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script src="catalog/view/theme/asiabeauty/libs/popper.js/popper.min.js"></script>
<script src="catalog/view/theme/asiabeauty/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<link href="catalog/view/theme/asiabeauty/stylesheet/stylesheet.css" rel="stylesheet">

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

<!-- <script src="catalog/view/javascript/jquery/jquery.autopager.js" ></script>
<script type="text/javascript" src="catalog/view/javascript/bal_loader.js" ></script> -->
<!-- <script type="text/javascript" src="catalog/view/theme/mamochki/js/showmore.js" ></script> -->

<script src="catalog/view/theme/asiabeauty/js/common.js"></script>

</head>
<body class="<?php echo $class; ?>">
	<header>
		<div class="header-container">
			<div class="header-top">
				<div class="container">
					<div class="row justify-content-between align-items-center">
						<div class="col-auto"><i class="far fa-clock"></i><span><?= $text_open; ?> <?= $open; ?></span></div>
						<div class="headerlinkmenu col-sm-auto col-12">
							<ul class="links inline">
								<?php if ($informations) { ?>
								<?php foreach ($informations as $information) { ?>
									<li><a title="<?= $information['title']; ?>" href="<?= $information['href']; ?>"><?= $information['title']; ?></a></li>
								<?php } } ?>
									<li><a title="" href="<?= $contact; ?>"><?= $text_contact; ?></a></li>
							</ul>
						</div>						
					</div>
				</div>
			</div>
			<div class="header-inner">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-12 col-md-3 col-lg-3"> 
							<div class="logo">
								<?php if ($logo) { ?>
								<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
								<?php } ?>
							</div>
						</div>
						<div class="col-12 col-md-5 col-lg-4"> 
							<div class="top-search">
								<?php echo $search; ?>
							</div>
						</div>
						<div class="col-12 col-md-5 col-lg-4 top-cart">
							<div class="phone-contain">
								<div class="phone"><a href="tel:+7<?php echo str_replace(array(' ','-','(',')'), '', strip_tags($telephone)) ?>"><?php echo $telephone; ?></a> </div>
								<a href="#callback_form" class="callback popup-with-form" data-target="backcall_1">Заказать звонок</a>
								<div id="callback_form" class="white-popup mfp-with-anim mfp-hide">
									<form action="" class="ajax-form" data-target="backcall_1.1">
										<!-- Hidden Required Fields -->
							      <input type="hidden" name="project_name" value="Мамочки">
							      <input type="hidden" name="admin_email" value="<?php echo $email; ?>">
							      <input type="hidden" name="form_subject" value="Заказать звонок с сайта Мамочки">
							      <!-- END Hidden Required Fields -->
										<div class="h3">Заказать звонок</div>
										<div class="form-group">
	      							<label>Ваше имя и фамилия</label>
	      							<div class="input-group">
		      							<div class="input-group-prepend">
		          						<span class="input-group-text"><i class="fa fa-user"></i></span>
		        						</div>
		        						<input type="text" class="form-control" name="Имя" id="name" required="">
	      							</div>
	      						</div>
									  <div class="form-group">
	      							<label>Телефон</label>
	      							<div class="input-group">
		      							<div class="input-group-prepend">
		          						<span class="input-group-text"><i class="fa fa-phone"></i></span>
		        						</div>
	        							<input type="text" class="form-control phone-mask" placeholder="(XXX) XXX-XX-XX" name="Телефон" required="">
	        						</div>
									  </div>
									  <div class="text-center"><button class="btn btn-primary btn-default" type="submit">Отправить</button></div>
									</form>
									<div class="success">Спасибо за заявку!</div>
								</div>
							</div>
							<?php echo $cart; ?>
						</div>
					</div>
				</div>
			</div>  
		</div>
		<nav>
			<div class="container">
				<div class="bf-btn-show"></div>
				<a href="#" class="toggle-menu">
					<div class="hamburger hamburger--slider">
		  			<div class="hamburger-box">
		    			<div class="hamburger-inner"></div>
		  			</div>
					</div>
				</a>
				<div class="menu-mobile">
					<div class="row">
						<div class="col-md-auto mega-container">
							<div class="navleft-container">
								<div class="mega-menu-title">
									<a href="<?= $catalog_link; ?>" class="h3"><i class="fa fa-bars"></i><span>Каталог товаров</span></a>
								</div>
							</div>
						</div>
						<div class="col jtv-megamenu">
							<div class="mtmegamenu">
								<ul id="more_nav" class="row">
									<?php if ($categories) { ?>
										<?php foreach ($categories as $category) { ?>
											<li class="<?php echo ($category['category_id'] == $category_id) ? 'active' : ''; ?> col-md-auto"><a href="<?= $category['href']; ?>"><?= $category['name']; ?></a></li>
										<?php } ?>	
									<?php } ?>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</nav>
		
	</header>
	
	
	