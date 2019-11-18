<?php echo $header; ?>
<div class="container">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?>
	</ul>
	<?php echo $content_top; ?>
	<div id="content" class="product-wrap">
		<div class="row">
			<div class="col-md-5 product-big-image">
				<?php if ($thumb || $images) { ?>
				<?php if ($thumb) { ?>
				<div class="large-image"> 
					<a href="<?= $thumb; ?>" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20"> 
						<img class="zoom-img img-responsive" src="<?= $thumb; ?>" alt="products"> 
					</a> 
				</div>	
				<?php } ?>
				<?php } ?>
			</div>
			<div class="col-md-6">
				<div id="product" class="product-data">
					<h1><?php echo $heading_title; ?></h1>
					<ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><strong>Бренд:</strong>&nbsp; <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul>
					<?php if ($price) { ?>
					<div class="price-wrap">
						<?php if (!$special) { ?>
						<span id="price" class="price"><?php echo $price; ?></span>
						<?php } else { ?>
						<span id="price" class="price"><?php echo $special; ?></span>
						<span class="price-old"><?php echo $price; ?></span>
						<?php } ?>
					</div>
					<?php } ?>
					<?php if ($review_status) { ?>
					<div class="rating">
						<?php for ($i = 1; $i <= 5; $i++) { ?>
						<?php if ($rating < $i) { ?>
						<i class="fa fa-star-o"></i>
						<?php } else { ?>
						<i class="fa fa-star"></i><i class="fa fa-star-o"></i>
						<?php } ?>
						<?php } ?>
					</div>
					<p class="reting-links">
						<a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a>
					</p>
					<?php } ?>
					<div class="product-variation">
						<div class="quantity">
							<span class="minus"></span>
							<input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
							<span class="plus"></span>
						</div>
						<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
						<button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn"><i class="fa fa-shopping-basket"></i><?php echo $button_cart; ?></button>
					</div>
					<?php if ($attribute_groups) { ?>
					<ul class="atrribute unstyled">
						<?php foreach ($attribute_groups as $attribute_group) { ?>
						<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
						<li><strong><?php echo $attribute['name']; ?>: </strong>&nbsp;<?php echo $attribute['text']; ?></li></td>
						<?php } ?>
						<?php } ?>
					</ul>
					<?php } ?>
				</div>
			</div>
		</div>
		<ul class="nav nav-tabs">
			<li><a href="#tab-description" class="active" data-toggle="tab"><?php echo $tab_description; ?></a></li>
			<?php if ($attribute_groups) { ?>
			<li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
			<?php } ?>
			<?php if ($review_status) { ?>
			<li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
			<?php } ?>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
			<?php if ($review_status) { ?>
			<div class="tab-pane" id="tab-review">
				<form class="form-horizontal" id="form-review">
					<div id="review"></div>
					<h2><?php echo $text_write; ?></h2>
					<?php if ($review_guest) { ?>
					<div class="form-group required">
						<div class="col-sm-12">
							<label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
							<input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
						</div>
					</div>
					<div class="form-group required">
						<div class="col-sm-12">
							<label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
							<textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
							<div class="help-block"><?php echo $text_note; ?></div>
						</div>
					</div>
					<div class="form-group required">
						<div class="col-sm-12">
							<label class="control-label"><?php echo $entry_rating; ?></label>
							&nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
							<input type="radio" name="rating" value="1" />
							&nbsp;
							<input type="radio" name="rating" value="2" />
							&nbsp;
							<input type="radio" name="rating" value="3" />
							&nbsp;
							<input type="radio" name="rating" value="4" />
							&nbsp;
							<input type="radio" name="rating" value="5" />
							&nbsp;<?php echo $entry_good; ?></div>
					</div>
					<?php echo $captcha; ?>
					<div class="buttons clearfix">
						<div class="pull-right">
							<button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
						</div>
					</div>
					<?php } else { ?>
					<?php echo $text_login; ?>
					<?php } ?>
				</form>
			</div>
			<?php } ?>
		</div>
		<?php echo $content_bottom; ?>
	</div>
</div>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>

<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
</script>
<?php echo $footer; ?>
