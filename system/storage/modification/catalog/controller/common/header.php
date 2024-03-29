<?php
class ControllerCommonHeader extends Controller {
	public function index() {

// Labels start
			$this->load->model('setting/setting');
			$data['labels_status'] = $this->config->get('labels_status');
			$data['labels_new_bg'] = $this->config->get('labels_new_bg');
			$data['labels_bestseller_bg'] = $this->config->get('labels_bestseller_bg');
			$data['labels_last_bg'] = $this->config->get('labels_last_bg');
			$data['labels_sold_bg'] = $this->config->get('labels_sold_bg');
			$data['labels_sale_bg'] = $this->config->get('labels_sale_bg');
// Labels end
			
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');

		$data['text_home'] = $this->language->get('text_home');

				$data['text_information'] = $this->language->get('text_information');
				$data['text_contact'] = $this->language->get('text_contact');
				$this->load->model('catalog/information');
				$data['informations'] = array();
				foreach ($this->model_catalog_information->getInformations() as $result) {
				    if (in_array($result['information_id'], array(7,6))) {
					    $data['informations'][] = array(
						    'title' => $result['title'],
						    'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
					    );
					}
				}
				$data['contact'] = $this->url->link('information/contact');

			    $data['catalog_link'] = $this->url->link('information/information', 'information_id=10');
			
				$data['news'] = $this->url->link('information/news');
				$data['text_open'] = $this->language->get('text_open');
				$data['open'] = nl2br($this->config->get('config_open'));
				$data['email'] = $this->config->get('config_email');
				$data['info'] = nl2br($this->config->get('config_comment'));
				$data['text_brands'] = $this->language->get('text_brands');
				$data['text_about'] = $this->language->get('text_about');
				$data['text_news'] = $this->language->get('text_news');
				$data['brands'] = $this->url->link('product/manufacturer');
				$data['about'] = $this->url->link('information/information', 'information_id=4');
			

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));

			    $data['count_wishlist'] = (!empty($this->session->data['wishlist'])? count($this->session->data['wishlist']) : 0);
 				$data['count_compare'] = (!empty($this->session->data['compare'])? count($this->session->data['compare']) : 0);
			
		}


			    // Compare
				$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			
		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);

			    $data['compare'] = $this->url->link('product/compare', '', true);
			
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', true);
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');

			    $data['catalog_link'] = $this->url->link('information/information', 'information_id=10');
			
		$data['telephone'] = $this->config->get('config_telephone');

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

        if (isset($this->request->get['path'])) {
            $parts = explode('_', (string)$this->request->get['path']);
        } else {
            $parts = array();
        }

        if (isset($parts[0])) {
            $data['category_id'] = $parts[0];
        } else {
            $data['category_id'] = 0;
        }

        if (isset($parts[1])) {
            $data['child_id'] = $parts[1];
        } else {
            $data['child_id'] = 0;
        }
			

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					
 				///////////////// Level 3
 				$subchildren_data = array();
 				$subchildren = $this->model_catalog_category->getCategories($child['category_id']);
 				foreach ($subchildren as $subchild) {
 					$filter_data = array(
						'filter_category_id'  => $subchild['category_id'],
						'filter_sub_category' => true
					);
					$subchildren_data[] = array(
						'name'  => $subchild['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $child['category_id'] . '_' . $subchild['category_id']),
					);
				}
				////////////////// Level 2
				$children_data[] = array(
					'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']),
					'subchildren' => $subchildren_data, 
				);
			  
			
				}

				// Level 1
				$data['categories'][] = array(
'category_id'     => $category['category_id'],
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} elseif (isset($this->request->get['information_id'])) {
				$class = '-' . $this->request->get['information_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		return $this->load->view('common/header', $data);
	}
}
