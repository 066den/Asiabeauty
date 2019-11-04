<footer>
	<div class="footer">
		<div class="container">
	    <div class="row">
	    	<div class="col-sm-6 col-md-3 order-2">
	    		<h5>О компании</h5>
	    		<ul class="default">
	          <?php foreach ($informations as $information) { ?>
	          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
	          <?php } ?>
	          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
	        </ul>
	    	</div>
	    	<div class="col-sm-6 col-md-3 order-3">
	    		<h5>Каталог</h5>
					<ul class="default">
						<?php foreach ($categories as $category) { ?>
							<li><a href="<?= $category['href']; ?>"><?= $category['name']; ?></a></li>
						<?php } ?>
					</ul>
	    	</div>
	    	<div class="col-md-3 col-sm-6 order-12">
	    		<h5>Контакты</h5>
	    		<div class="phone-contain">
						<div class="phone"><a href="tel:<?php echo str_replace(array(' ','-','(',')'), '', strip_tags($telephone)) ?>"><?php echo $telephone; ?></a> <small><?php echo $text_open; ?> <?php echo $open; ?></small></div>
						<a href="#callback_form2" class="callback popup-with-form" data-target="backcall_2">Заказать звонок</a>
						<div id="callback_form2" class="white-popup mfp-with-anim mfp-hide">
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
					<ul class="inline payment">
						<li class="visa"></li>
						<li class="mc"></li>
						<li class="mir"></li>
					</ul>
					<ul class="inline social">
						<li><a href="https://vk.com/yarkolyaska" target="_blank"><i class="fab fa-vk"></i></a></li>
						<li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
						<li><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li><a href="#"><i class="fab fa-odnoklassniki"></i></a></li>
					</ul>
					
	    	</div>
	    	<div class="col-md-3 col-sm-6 order-1">
	    		<div class="logo">
						<?php if ($logo) { ?>
						<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
						<?php } ?>
					</div>
	    		<p class="copyright"><?= $name; ?> <br>
		        &copy; 2013-<?= date('Y'); ?>. <br>
		        Все права защищены. <br>
		        Информация, опубликованная на сайте, не является публичной офертой или рекламой, а носит информационный характер и может быть изменена по усмотрению компании. При использовании материалов с сайта ссылка на сайт обязательна.
		      </p>
	    	</div>
	    </div>
	  </div>
	</div>
  <div class="terms"><a href="<?= $terms; ?>" >Пользовательское соглашение</a></div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->


</body>
</html>