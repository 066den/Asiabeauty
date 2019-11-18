<div class="col-sm-auto banner-top">
	<div id="banner<?php echo $module; ?>" class="owl-carousel">
	  <?php foreach ($banners as $banner) { ?>
	  <div class="item">
	    <?php if ($banner['link']) { ?>
	    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
	    <?php } else { ?>
	    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
	    <?php } ?>
	  </div>
	  <?php } ?>
	</div>
</div>


<script type="text/javascript"><!--
$('#banner<?php echo $module; ?>').owlCarousel({
	items: 1,
	autoplay: true,
	loop: true,
	dots: false,
	animateOut: 'fadeOut',

});
--></script>

