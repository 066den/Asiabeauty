<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      
			<div class="image">
				<a href="<?php echo $product['href']; ?>">
<!-- Labels start-->
<?php if ($labels_status) { ?>
<div class="product-label">
  <?php if( $product['sold'] == 0 && $labels_sold_status == 1) {   ?>
        <?php if( $product['is_new'] < $labels_new) {   ?>            
        	<div class="product-label-new"><span><?php echo $labels_new_text; ?></span></div>                                             
        <?php } ?>
        <?php if( $product['last'] == 1 && $labels_last_status == 1) {   ?>            
       		<div class="product-label-last"><span><?php echo $labels_last_text; ?></span></div>                                             
        <?php } ?>
        <?php $i = 0; ?>
        <?php foreach ($bestsellers as $bestseller) { ?>
        <?php if( $bestsellers[$i]['bestseller_id'] == $product['product_id'] ) {   ?>            
        	<div class="product-label-bestseller"><span><?php echo $labels_bestseller_text; ?></span></div>                                             
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>  
        <?php if( $product['special'] )  { ?>
            <?php if( $labels_sale_type == 1 )  { ?>
            <div class="product-label-sale"><span><?php echo $product['percent']; ?>% <?php echo $labels_sale_text; ?></span></div>
            <?php } else { ?>            
            <div class="product-label-sale"><span><?php echo $labels_sale_text; ?></span></div>
            <?php } ?> 
        <?php } ?>
        <?php } else if( $product['sold'] == 1 && $labels_sold_status == 1)  { ?>
      		<div class="product-label-sold"><span><?php echo $labels_sold_text; ?></span></div>
    	<?php } else { ?>
    	<?php if( $product['is_new'] < $labels_new) {   ?>            
        	<div class="product-label-new"><span><?php echo $labels_new_text; ?></span></div>                                             
        <?php } ?>
        <?php if( $product['last'] == 1 && $labels_last_status == 1) {   ?>            
        	<div class="product-label-last"><span><?php echo $labels_last_text; ?></span></div>                                             
        <?php } ?>
        <?php $i = 0; ?>
        <?php foreach ($bestsellers as $bestseller) { ?>
        <?php if( $bestsellers[$i]['bestseller_id'] == $product['product_id'] ) {   ?>            
        	<div class="product-label-bestseller"><span><?php echo $labels_bestseller_text; ?></span></div>                                             
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>  
        <?php if( $product['special'] )  { ?>
            <?php if( $labels_sale_type == 1 )  { ?>
            <div class="product-label-sale"><span><?php echo $product['percent']; ?>% <?php echo $labels_sale_text; ?></span></div>
            <?php } else { ?>            
            <div class="product-label-sale"><span><?php echo $labels_sale_text; ?></span></div>
            <?php } ?> 
        <?php } ?>
        <?php } ?>  
  </div>
  <?php } ?>
<!-- Labels end-->  
		<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
