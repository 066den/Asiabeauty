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
<title><?php echo $title; ?> | интернет-магазин корейской косметики ASIA BEAUTY</title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo htmlentities($description, ENT_QUOTES); ?>" />
<?php }else{ ?>
<meta name="description" content="" />	
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
						<div class="col-auto ">
							<div class="box-phone"><i class="fa fa-phone"></i><span>Телефон: </span><a class="phone" href="tel:+38<?php echo str_replace(array(' ','-','(',')'), '', strip_tags($telephone)) ?>"><?php echo $telephone; ?></a></div>
							<div class="box-open"><i class="fa fa-clock"></i><span><?= $text_open; ?> </span><?= $open; ?></div>
						</div>
						<div class="headerlinkmenu col-sm-auto col-12">
							<ul class="links inline">
								<?php if ($informations) { ?>
								<?php foreach ($informations as $information) { ?>
									<li><a title="<?= $information['title']; ?>" href="<?= $information['href']; ?>"><?= $information['title']; ?></a></li>
								<?php } } ?>
							</ul>
						</div>						
					</div>
				</div>
			</div>
		</div>
	</header>
	<nav class="menu-row sticky-top">
		<div class="container">
			<div class="bf-btn-show"></div>
			<a href="#" class="toggle-menu">
				<div class="hamburger hamburger--slider">
	  			<div class="hamburger-box">
	    			<div class="hamburger-inner"></div>
	  			</div>
				</div>
			</a>
			<div class="mega-menu">
				<div class="row align-items-center">
					<div class="col-auto"> 
						<div class="logo">
							<?php if ($logo) { ?>
							<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
							<?php } ?>
						</div>
					</div>
					<div class="col-auto">
						<div class="mega-menu-container">
							<div class="mega-menu-title">
								<div class="h3"><span>Каталог товаров</span></div>
							</div>
							<div class="mega-menu-category">
								<ul id="more_nav" class="nav">
									<?php if ($categories) { ?>
									<?php foreach ($categories as $category) { ?>
									<?php if ($category['children']) { ?>
									<li>
										<a href="#"><?php echo $category['name']; ?></a>
										<?php if($category['children'][0]['subchildren']) { ?>
										<div class="wrap-popup">
											<div class="popup">
												<div class="row">
													<?php foreach ($category['children'] as $children) { ?>
													<div class="col-md-6">
														<h6><?php echo $children['name']; ?></h6>
														<ul class="nav">
															<?php foreach ($children['subchildren'] as $subchildren) { ?>
															<li><a href="<?= $subchildren['href'] ?>"><?= $subchildren['name'] ?></a></li>
															<?php } ?>
														</ul>
													</div>
													<?php } ?>
												</div>
											</div>
										</div>
										<?php }else{?>
										<div class="wrap-popup column1">
											<div class="popup">
												<ul class="nav">
													<?php foreach ($category['children'] as $children) { ?>
													<li><a href="<?php echo $children['href']; ?>"><?php echo $children['name']; ?></a></li>
													<?php } ?>
												</ul>
											</div>
										</div>
										<?php } ?>
									</li>
									<?php }else{ ?>
									<li class="<?php echo ($category['category_id'] == $category_id) ? 'active' : ''; ?>"><a href="<?= $category['href']; ?>"><?= $category['name']; ?></a></li>
									<?php } ?>
									<?php } ?>	
									<?php } ?>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-auto">
						<div class="mtmegamenu">
							<ul>
								<li><a href="<?= $brands; ?>"><?php echo $text_brands; ?></a></li>
								<li><a href="<?= $news; ?>"><?= $text_news; ?></a></li>
								<li><a href="<?= $about; ?>"><?= $text_about; ?></a></li>
								<li><a href="<?= $contact; ?>"><?= $text_contact; ?></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-auto">
						<div class="row">
							<?php echo $search; ?>
							<?php echo $cart; ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>	
	
	
	