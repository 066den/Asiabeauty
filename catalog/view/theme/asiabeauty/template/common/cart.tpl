<div id="cart" class="top-cart-contain d-flex jcfe">
	<a href="<?php echo $cart; ?>" class="mini-cart">
		<span class="basket">
			<span class="cart-icon">
				<img src="image/cart-icon.svg" alt="">
				<span id="cart-total" class="cart-total"><?php echo $count; ?></span>
			</span>
		</span>
	</a>
	<div class="text-price"><span><?php echo number_format($total_prices, 0, '',' '); ?></span> <small>грн</small></div>
</div>