<div id="bannerpro<?php echo $module; ?>" class="<?php if($mobile_image){ echo 'mobile-image'; }?>">
  <?php foreach ($bannerspro as $bannerpro) { ?>
  <div class="item">
    <?php if ($bannerpro['link']) { ?><a href="<?php echo $bannerpro['link']; ?>"><?php } ?>
      <img src="<?php echo $bannerpro['image']; ?>" alt="" class="img-responsive" />
      <?php if ($text) { ?>
      <div class="text-bannerpro">
        <div class="text-bannerpro-inner"><?php echo $bannerpro['title']; ?></div>
      </div>
      <?php } ?>
    <?php if ($bannerpro['link']) { ?></a><?php } ?>
  </div>
  <?php } ?>
</div>
<style>
#bannerpro<?php echo $module; ?> .item {
  height: <?php echo $height; ?>px;
}
#bannerpro<?php echo $module; ?> .text-bannerpro {
  height: <?php echo $height; ?>px;
  width: <?php echo $width; ?>px;
  opacity: <?php echo $texthover; ?>;
  background: <?php echo $banner_bg; ?>;
}
#bannerpro<?php echo $module; ?> .text-bannerpro:hover {
  opacity: 1;
}
<?php if($mobile_image){ ?>
  #bannerpro<?php echo $module; ?> .item {
    height: auto;
  }
<?php } ?>
@media screen and (max-width: 640px) {
<?php if($hide_text){ ?>
  #bannerpro<?php echo $module; ?> .text-bannerpro {
    display: none;
  }
<?php } ?>
}
</style>
<script type="text/javascript"><!--
$('#bannerpro<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 4000,
	singleItem: true,
  stopOnHover: true,
  navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
  navigation: <?php echo $navigation; ?>,
  pagination: <?php echo $pagination; ?>,
	transitionStyle: ($('#bannerpro<?php echo $module; ?> .item').length > 1) ? '<?php echo $animation; ?>' : '',
  baseClass : 'bannerpro',
  theme : ''
});
--></script>
