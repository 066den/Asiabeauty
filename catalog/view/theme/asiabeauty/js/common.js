function getURLVar(key) {
	var value = [];
	var query = String(document.location).split('?');
	if (query[1]) {
		var part = query[1].split('&');
		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
}

function setMoreNav() {
	var nav = $('#more_nav'),
			nav_width = nav.outerWidth(),
			nav_elem_width = 0,
			more_link = $('<li class="more"><a href="#">&hellip;</a><ul></ul></li>'),
			class_nav_item = 'nav-item',
			class_nav_item_more = 'nav-item-more';
		
	if( nav.find('.more').length > 0 ) {
		nav.append(nav.find('.more ul li'));
		nav.find('.more').remove();
	} 
		
	$.each(nav.find('li'), function(i, elem){
		var elem_width = $(elem).outerWidth();
		nav_elem_width += elem_width;
	});
		
	if( nav_elem_width > nav_width ) {
		nav.append(more_link);
		nav_width -= more_link.outerWidth();
		nav_elem_width = 0;
			
		$.each(nav.find('li'), function(i, elem){
			var elem_width = $(elem).outerWidth();
			nav_elem_width += elem_width;
				
			if( !$(elem).is('.more') ) {
				if( nav_elem_width < nav_width ) {
					$(elem).addClass(class_nav_item).removeClass(class_nav_item_more);
				} else {
					$(elem).addClass(class_nav_item_more).removeClass(class_nav_item);
				}
			}
		});
	}
	more_link.find('ul').append($('.' + class_nav_item_more));
}


$(document).ready(function() {
	if(localStorage.info != 'close'){
		$('#info_panel').show();
	}

	$('#info_panel .close').on('click', function(e){
		e.preventDefault();
		localStorage.info = 'close';
		$('#info_panel').hide();
	})

	$('.hamburger').on('click', function(){
		$(this).toggleClass('is-active');
		$('nav').toggleClass('active');
	})

	// Highlight any found errors
	$('.text-danger').each(function() {
		var element = $(this).parent().parent();

		if (element.hasClass('form-group')) {
			element.addClass('has-error');
		}
	});

	// Currency
	$('#form-currency .currency-select').on('click', function(e) {
		e.preventDefault();

		$('#form-currency input[name=\'code\']').val($(this).attr('name'));

		$('#form-currency').submit();
	});

	// Language
	$('#form-language .language-select').on('click', function(e) {
		e.preventDefault();

		$('#form-language input[name=\'code\']').val($(this).attr('name'));

		$('#form-language').submit();
	});

	/* Search */
	$('#search input[name=\'search\']').parent().find('button').on('click', function() {
		var url = $('base').attr('href') + 'index.php?route=product/search';

		var value = $('header #search input[name=\'search\']').val();

		if (value) {
			url += '&search=' + encodeURIComponent(value);
		}

		location = url;
	});

	$('#search input[name=\'search\']').on('keydown', function(e) {
		if (e.keyCode == 13) {
			$('header #search input[name=\'search\']').parent().find('button').trigger('click');
		}
	});

	// Menu
	$('#menu .dropdown-menu').each(function() {
		var menu = $('#menu').offset();
		var dropdown = $(this).parent().offset();

		var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#menu').outerWidth());

		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 10) + 'px');
		}
	});

	// Product List
	$('#list-view').click(function() {
		$('#content .product-grid > .clearfix').remove();

		$('#content .row > .product-grid').attr('class', 'product-layout product-list col-xs-12');
		$('#grid-view').removeClass('active');
		$('#list-view').addClass('active');

		localStorage.setItem('display', 'list');
	});

	// Product Grid
	$('#grid-view').click(function() {
		// What a shame bootstrap does not take into account dynamically loaded columns
		var cols = $('#column-right, #column-left').length;

		if (cols == 2) {
			$('#content .product-list').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
		} else if (cols == 1) {
			$('#content .product-list').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
		} else {
			$('#content .product-list').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
		}

		$('#list-view').removeClass('active');
		$('#grid-view').addClass('active');

		localStorage.setItem('display', 'grid');
	});

	if (localStorage.getItem('display') == 'list') {
		$('#list-view').trigger('click');
		$('#list-view').addClass('active');
	} else {
		$('#grid-view').trigger('click');
		$('#grid-view').addClass('active');
	}

	// Checkout
	$(document).on('keydown', '#collapse-checkout-option input[name=\'email\'], #collapse-checkout-option input[name=\'password\']', function(e) {
		if (e.keyCode == 13) {
			$('#collapse-checkout-option #button-login').trigger('click');
		}
	});

	// tooltips on hover
	$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});

	// Makes tooltips work on ajax generated content
	$(document).ajaxStop(function() {
		$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
	});

	//My function
		
	$('.mega-menu-container').hover(function() {
		$('.mega-menu-category').stop(true).slideDown();
	}, function() {
		$('.mega-menu-category').stop(true).slideUp();
	});

	$('.mega-menu-category .nav > li').hover(function() {
		$(this).addClass("active");
		$(this).find('.popup').stop(true, true).fadeIn('slow');
	}, function() {
		$(this).removeClass("active");
		$(this).find('.popup').stop(true, true).fadeOut('slow');
	});

	$('.mega-menu-category a[href="#"]').on('click', function(e){
		e.preventDefault();
	})

	$('.popup-with-form').magnificPopup({
		type: 'inline',
		preloader: false,
		mainClass: 'mfp-move-from-top',
		callbacks: {
			open: function() {
				var target_name = $(this.currItem.el).data('target');
				if(target_name) yaCounter50572135.reachGoal(target_name);
			}
		}
	});

	$('.quantity span').on('click', function() {
  	var input = $(this).siblings('input');
   	var count = parseInt(input.val());console.log(count);
  	if ($(this).attr('class') == 'minus') {
  		if(input.val() - 1 < 1) {
  			return;
  		}	else {
  			count--;
				input.val(count);
        input.change();
    	}
   	} else {
   		count++;
   		input.val(count);
      input.change();
   	}
  });

  $('.search-icon').on('click', function() {
  	if ( $('.iSearchBoxWrapper').css('display') == 'none' ) {
			$(this).addClass("active");
			$('.iSearchBoxWrapper').css({'display':'block'}).animate({width:650, opacity:1},300);
		} else {
			$(this).parent().find('.active').removeClass('active');
			$('.iSearchBoxWrapper').animate({width:0, opacity:0},{duration:300, done:function(){$(this).css({'display':'none'});}});
		}
  })

	//E-mail Ajax Send
	$(".ajax-form").submit(function() {
		var form = $(this);
		var formData = new FormData(form[0]);
    var target_name = form.data('target');
    $.ajax({
			method: "POST",
			url: "catalog/controller/mail/mail.php",
			data: formData,
			processData: false,
      contentType: false,
		}).done(function() {
			var pp_suc = form.closest('.white-popup, .ajax-form-wrap, .white-popup-block').find('.success');
			if(target_name) yaCounter50572135.reachGoal(target_name);
			pp_suc.fadeIn();
			setTimeout(function() {
				form.trigger("reset");
				pp_suc.fadeOut();
				$.magnificPopup.close();
			}, 4000);
		});
		return false;
	});

	
	if($('#product_slide').length){
		$('#product_slide').owlCarousel({
			items: 1,
			loop: true,
			nav : true,
			navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
			onInitialized: afterOWLinit // do some work after OWL init
		});
	}

	var text_show_next = 'Показать еще {show} {items}',
		text_show_all = 'Показано {show} {items} из {shows}',
		text_loading = 'Загрузка...',
		text_no_more_show = 'Больше нечего показывать',
		text_d1_items = 'товар',
		text_d2_items = 'товара',
		text_d3_items = 'товаров';
	function declension(a){	switch(a){case 1:return text_d1_items;break;case 2:case 3:case 4:return text_d2_items;break;default:return text_d3_items;}}
	
	$(document).on('click','#showmore a', function(e) {
		e.preventDefault();
		showmore.load();
	})
	
	var showmore = {
		'init': function(current, next) {
			var e_total,e_count;
			var $next = $("a.next-pagination");
			if ($next.length == 0) {
				return;
			}else{
				e_total = $(".divpagination div:last").text().replace(/[^\d]/gi, '.').split('.').filter(function(number) {return number > 0;});
				e_count = e_total[1] - e_total[0]+1;
				if ((e_total[2] - e_total[1]) < e_count) e_count = e_total[2] - e_total[1];
				$('.pagination').before('<div id="showmore" class="text-center" style="margin-bottom: 30px;"><span class="box-next"><a href="#" class="btn btn-default">'+text_show_next.replace(/{show}/gi, e_count).replace(/{items}/gi, declension(e_count))+'</a></span></div>');
			}
		},
		'load': function() {
			$next = $("a.next-pagination");
			$.get($next.attr('href'), function (data) {
				$data = $(data);
				var $container = $('.appenddivproduct');
				$container.append($data.find('.product-grid'));
				$('.pagination').html($data.find('.pagination > *'));
				if ($('a').is('.next-pagination')) {
					$('#showmore').show();
				}else{
					$('#showmore').hide();
				}
			}, "html");
			return false;
		},
	}
	
	showmore.init();
	$(window).on('productlistchange', function() {
  	showmore.init();
  	if($(window).width() < 768) {
			$('.bf-btn-show').trigger('click');
		}
  });

	if($(window).width() > 575) {
		//setMoreNav();
	}
	
	$(window).resize(function(){
		if($(window).width() > 575) {
			//setMoreNav();
		}
	});

});

window.addEventListener("DOMContentLoaded", function() {
var inputs = Array.prototype.slice.call(document.querySelectorAll('.phone-mask'));
inputs.forEach( function(input) {
	var keyCode;
	function mask(event) {
		event.keyCode && (keyCode = event.keyCode);
		var pos = this.selectionStart;
		if (pos < 4) event.preventDefault();
		var matrix = "+38(___) ___-__-__",
				i = 0,
				def = matrix.replace(/\D/g, ""),
				val = this.value.replace(/\D/g, ""),
				new_value = matrix.replace(/[_\d]/g, function(a) {
					return i < val.length ? val.charAt(i++) || def.charAt(i) : a
				});
		i = new_value.indexOf("_");
		if (i != -1) {
			i < 5 && (i = 4);
			new_value = new_value.slice(0, i)
		}
		var reg = matrix.substr(0, this.value.length).replace(/_+/g,
			function(a) {
				return "\\d{1," + a.length + "}"
			}).replace(/[+()]/g, "\\$&");
		reg = new RegExp("^" + reg + "$");
		if (!reg.test(this.value) || this.value.length < 6 || keyCode > 47 && keyCode < 58) this.value = new_value;
		if (event.type == "blur" && this.value.length < 6)  this.value = "";
	}

	input.addEventListener("input", mask, false);
	input.addEventListener("focus", mask, false);
	input.addEventListener("blur", mask, false);
	input.addEventListener("keydown", mask, false)
})
});

let moneyFormat = (n) => {
  return parseFloat(n).toFixed(0).replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1 ");
}

// Cart add remove functions
var cart = {
	'add': function(product_id, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				$('.alert, .text-danger').remove();

				if (json['redirect']) {
					location = json['redirect'];
				}

				if (json['success']) {
					//$('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
					// Need to set timeout otherwise it wont update the total
					setTimeout(function () {
						$('#cart-total').html(json['total']);
						$('.text-price span').html(moneyFormat(json['total_price']));
						
					}, 100);
					$('html, body').animate({ scrollTop: 0 }, 'slow');

					$('#cart .top-cart-content').load('index.php?route=common/cart/info #top_cart_content');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	},
	'update': function(key, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/edit',
			type: 'post',
			data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}

var voucher = {
	'add': function() {

	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}

var wishlist = {
	'add': function(product_id, element) {
		$.ajax({
			url: 'index.php?route=account/wishlist/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				$('.alert').remove();
				if (json['success']) {
					$('#success_alert').html('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
					$('#wishlist-total span').removeClass('hidden').html(json['total_count']);
					$('#wishlist-total').attr('title', json['total']);
					$(element).attr('title','В закладках').find('i').removeClass('far').addClass('fas');
					$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	},
	'remove': function() {

	}
}

var compare = {
	'add': function(product_id) {
		$.ajax({
			url: 'index.php?route=product/compare/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				$('.alert').remove();

				if (json['success']) {
					
					$('#compare-total span').removeClass('hidden').html(json['total_count']);
					$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	},
	'remove': function() {
	}
}

/* Agree to Terms */
$(document).delegate('.agree', 'click', function(e) {
	e.preventDefault();

	$('#modal-agree').remove();

	var element = this;

	$.ajax({
		url: $(element).attr('href'),
		type: 'get',
		dataType: 'html',
		success: function(data) {
			html  = '<div id="modal-agree" class="modal">';
			html += '  <div class="modal-dialog">';
			html += '    <div class="modal-content">';
			html += '      <div class="modal-header">';
			html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
			html += '        <h4 class="modal-title">' + $(element).text() + '</h4>';
			html += '      </div>';
			html += '      <div class="modal-body">' + data + '</div>';
			html += '    </div';
			html += '  </div>';
			html += '</div>';

			$('body').append(html);

			$('#modal-agree').modal('show');
		}
	});
});

// Autocomplete */
(function($) {
	$.fn.autocomplete = function(option) {
		return this.each(function() {
			this.timer = null;
			this.items = new Array();

			$.extend(this, option);

			$(this).attr('autocomplete', 'off');

			// Focus
			$(this).on('focus', function() {
				this.request();
			});

			// Blur
			$(this).on('blur', function() {
				setTimeout(function(object) {
					object.hide();
				}, 200, this);
			});

			// Keydown
			$(this).on('keydown', function(event) {
				switch(event.keyCode) {
					case 27: // escape
						this.hide();
						break;
					default:
						this.request();
						break;
				}
			});

			// Click
			this.click = function(event) {
				event.preventDefault();

				value = $(event.target).parent().attr('data-value');

				if (value && this.items[value]) {
					this.select(this.items[value]);
				}
			}

			// Show
			this.show = function() {
				var pos = $(this).position();

				$(this).siblings('ul.dropdown-menu').css({
					top: pos.top + $(this).outerHeight(),
					left: pos.left
				});

				$(this).siblings('ul.dropdown-menu').show();
			}

			// Hide
			this.hide = function() {
				$(this).siblings('ul.dropdown-menu').hide();
			}

			// Request
			this.request = function() {
				clearTimeout(this.timer);

				this.timer = setTimeout(function(object) {
					object.source($(object).val(), $.proxy(object.response, object));
				}, 200, this);
			}

			// Response
			this.response = function(json) {
				html = '';

				if (json.length) {
					for (i = 0; i < json.length; i++) {
						this.items[json[i]['value']] = json[i];
					}

					for (i = 0; i < json.length; i++) {
						if (!json[i]['category']) {
							html += '<li data-value="' + json[i]['value'] + '"><a href="#">' + json[i]['label'] + '</a></li>';
						}
					}

					// Get all the ones with a categories
					var category = new Array();

					for (i = 0; i < json.length; i++) {
						if (json[i]['category']) {
							if (!category[json[i]['category']]) {
								category[json[i]['category']] = new Array();
								category[json[i]['category']]['name'] = json[i]['category'];
								category[json[i]['category']]['item'] = new Array();
							}

							category[json[i]['category']]['item'].push(json[i]);
						}
					}

					for (i in category) {
						html += '<li class="dropdown-header">' + category[i]['name'] + '</li>';

						for (j = 0; j < category[i]['item'].length; j++) {
							html += '<li data-value="' + category[i]['item'][j]['value'] + '"><a href="#">&nbsp;&nbsp;&nbsp;' + category[i]['item'][j]['label'] + '</a></li>';
						}
					}
				}

				if (html) {
					this.show();
				} else {
					this.hide();
				}

				$(this).siblings('ul.dropdown-menu').html(html);
			}

			$(this).after('<ul class="dropdown-menu"></ul>');
			$(this).siblings('ul.dropdown-menu').delegate('a', 'click', $.proxy(this.click, this));

		});
	}
})(window.jQuery);


