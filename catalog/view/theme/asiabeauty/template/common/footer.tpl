<footer>
	<div class="footer">
		<div class="container">
	    <div class="row">
	    	<div class="col-md-4">
	    		<h5>Контакты</h5>
	    		<div class="box-phone"><i class="fa fa-phone"></i>&nbsp;<a href="tel:<?php echo str_replace(array(' ','-','(',')'), '', strip_tags($telephone)) ?>"><?php echo $telephone; ?></a> </div>
	    		<div class="box-phone"><i class="fa fa-clock"></i>&nbsp; <span><?php echo $open; ?></span></div>
	    		<div class="box-phone"><i class="fa fa-envelope"></i>&nbsp; <a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></div>
	    	</div>
	    	<div class="col-md-4">
	    		<a href="<?php echo $home; ?>" class="logo">
	    			<img src="image/catalog/logo_footer.png" alt="">
	    			<h4>ASIA BEAUTY - КОРЕЙСКАЯ КОСМЕТИКА</h4>
	    		</a>
	    	</div>
	    	<div class="col-sm-6 col-md-4">
	    		<h5>Каталог</h5>
					<ul class="default unstyled">
						<?php foreach ($categories as $category) { ?>
							<li><a href="<?= $category['href']; ?>"><?= $category['name']; ?></a></li>
						<?php } ?>
					</ul>
	    	</div>
	    </div>
	  </div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-4">
					<ul class="inline social">
						<li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
						<li><a href="#"><i class="fab fa-instagram"></i></a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="inline payment">
						<li><img src="image/catalog/payment_1.jpg" alt=""></li>
						<li><img src="image/catalog/payment_2.jpg" alt=""></li>
						<li><img src="image/catalog/payment_3.jpg" alt=""></li>
						<li><img src="image/catalog/payment_4.jpg" alt=""></li>
						<li><img src="image/catalog/payment_5.jpg" alt=""></li>
					</ul>
				</div>
				<div class="col-md-4"><p class="copyright"><?= $name; ?> &copy; <?= date('Y'); ?>. Все права защищены. </p></div>
			</div>
		</div>
	</div>
</footer>

</body>
</html>