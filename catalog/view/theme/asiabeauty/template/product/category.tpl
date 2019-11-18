<?php echo $header; ?>
<div class="container">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?>
	</ul>
	<?php echo $content_top; ?>
	<div class="category-wrap">
		<div class="row">
			<div class="col-lg-3 col-md-4"><?php echo $column_left; ?></div>
			<div id="content" class="col-lg-9 col-md-8">
				
				<?php if ($products) { ?>
				<div class="row align-items-center justify-content-between">
					<div class="col-sm-auto"><h1><?php echo $heading_title; ?></h1></div>
					<div class="col-sm-auto">
						<div class="sort-block">
							<select id="input-sort" class="form-control" onchange="location = this.value;">
								<?php foreach ($sorts as $sorts) { ?>
								<?php if(in_array($sorts['value'], array('pd.name-ASC','pd.name-DESC','p.price-ASC','p.price-DESC','p.sort_order-ASC'))) { ?>
								<?php if($sorts['value'] == $sort . '-' . $order) { ?>
								<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
								<?php } ?>
								<?php } ?>
								<?php } ?>
							</select>
						</div>
					</div>
				</div>
				
				<div class="row products appenddivproduct">
					<?php foreach ($products as $product) { ?>
					<div class="product-grid col-6 col-lg-4">
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
				<div class="row">
					<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
					<div class="col-sm-6 text-right"><?php echo $results; ?></div>
				</div>
				<?php } ?>
				<?php if (!$categories && !$products) { ?>
				<p><?php echo $text_empty; ?></p>
				<div class="buttons">
					<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
				</div>
				<?php } ?>
				<?php if ($thumb || $description) { ?>
	      <div class="row">
	        <?php if ($thumb) { ?>
	        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
	        <div class="col-sm-10 description"><?php echo $description; ?></div>
	        <?php } ?>
	        <?php if ($description) { ?>
	        <div class="description"><?php echo $description; ?></div>
	        <?php } ?>
	      </div>
	      <?php } ?>
				<?php echo $content_bottom; ?>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
