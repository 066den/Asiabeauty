<?php
class ControllerExtensionModuleLatest extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/latest');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');


// Labels start
				$this->load->model('setting/setting');
				$data['labels_status'] = $this->config->get('labels_status');
				$data['labels_sold_status'] = $this->config->get('labels_sold_status');
				$data['labels_last_status'] = $this->config->get('labels_last_status');
				$data['labels_new'] = $this->config->get('labels_new');
				$data['labels_sale_type'] = $this->config->get('labels_sale_type');
				$data['labels_new_text'] = $this->config->get('labels_new_text-'.$this->config->get('config_language_id'));
				$data['labels_bestseller_text'] = $this->config->get('labels_bestseller_text-'.$this->config->get('config_language_id'));
				$data['labels_last_text'] = $this->config->get('labels_last_text-'.$this->config->get('config_language_id'));
				$data['labels_sold_text'] = $this->config->get('labels_sold_text-'.$this->config->get('config_language_id'));
				$data['labels_sale_text'] = $this->config->get('labels_sale_text-'.$this->config->get('config_language_id'));
				$data['bestsellers'] = array();
				$bestsellers = $this->model_catalog_product->getBestSellerProducts( $this->config->get('labels_bestseller') );

				foreach ($bestsellers as $bestseller) {				
					$data['bestsellers'][] = array(
						'bestseller_id' => $bestseller['product_id']
					);
				}
// Labels end
			
		$data['products'] = array();

		$filter_data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);

		$results = $this->model_catalog_product->getProducts($filter_data);

		if ($results) {
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,

// Labels start
				'is_new'      => date_diff(new DateTime(date("Y-m-d H:i:s")), new DateTime(date($result['date_added'])))->days,
				'percent'     => $result['special'] !=0 && $result['price'] !=0 ? round(100 - ($result['special']*100/$result['price'])) : 0,
				'sold'        => $result['quantity'] <= 0 ? 1 : 0,
				'last'        => $result['quantity'],
// Labels end
			
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}

			return $this->load->view('extension/module/latest', $data);
		}
	}
}
