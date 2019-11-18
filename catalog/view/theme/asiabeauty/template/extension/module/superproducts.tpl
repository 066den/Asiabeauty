<h3><?php echo $heading_title; ?></h3>
<div class="row">
	<?php foreach ($products as $product) { ?>
	<div class="product-grid col-6 col-md-3">
		<div class="product-layout">
			<div class="product-thumb">
				<div class="image">
					<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
				</div>
				<button type="button" class="btn btn-block" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
			</div>
			<div class="caption">
				<div class="h4"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				<?php if ($product['price']) { ?>
				<p class="price">
					<?php if (!$product['special']) { ?>
					<?php echo $product['price']; ?>
					<?php } else { ?>
					<span class="price-new"><?php echo $product['special']; ?></span> <br>
					<span class="price-old"><?php echo $product['price']; ?></span>
					<?php } ?>
				</p>
				<?php } ?>
			</div>
		</div>
	</div>
	<?php } ?>
</div>
