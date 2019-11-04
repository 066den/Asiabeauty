<?php
class ControllerInformationInformation extends Controller {
	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$information_info = $this->model_catalog_information->getInformation($information_id);

				$delivery_info = $this->model_catalog_information->getInformation(12);
				$data['delivery_descr'] = html_entity_decode($delivery_info['description'], ENT_QUOTES, 'UTF-8');
				$data['delivery_title'] = $delivery_info['title'];
				$pay_info = $this->model_catalog_information->getInformation(13);
				$data['pay_descr'] = html_entity_decode($pay_info['description'], ENT_QUOTES, 'UTF-8');
				$data['pay_title'] = $pay_info['title'];
				$warranty_info = $this->model_catalog_information->getInformation(15);
				$data['warranty_descr'] = html_entity_decode($warranty_info['description'], ENT_QUOTES, 'UTF-8');
				$data['warranty_title'] = $warranty_info['title'];
				$return_info = $this->model_catalog_information->getInformation(16);
				$data['return_descr'] = html_entity_decode($return_info['description'], ENT_QUOTES, 'UTF-8');
				$data['return_title'] = $return_info['title'];
				$bad_info = $this->model_catalog_information->getInformation(17);
				$data['bad_descr'] = html_entity_decode($bad_info['description'], ENT_QUOTES, 'UTF-8');
				$data['bad_title'] = $bad_info['title'];
			

		if ($information_info) {
			$this->document->setTitle($information_info['meta_title']);
			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);

			$data['breadcrumbs'][] = array(
				'text' => $information_info['title'],
				'href' => $this->url->link('information/information', 'information_id=' .  $information_id)
			);

			$data['heading_title'] = $information_info['title'];

			$data['button_continue'] = $this->language->get('button_continue');

			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			
				if($information_id == 6) {
					$this->response->setOutput($this->load->view('information/infodelivery', $data));
				}else{
			    	$this->response->setOutput($this->load->view('information/information', $data));
				}
			
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('information/information', 'information_id=' . $information_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}

	public function agree() {
		$this->load->model('catalog/information');

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$output = '';

		$information_info = $this->model_catalog_information->getInformation($information_id);

				$delivery_info = $this->model_catalog_information->getInformation(12);
				$data['delivery_descr'] = html_entity_decode($delivery_info['description'], ENT_QUOTES, 'UTF-8');
				$data['delivery_title'] = $delivery_info['title'];
				$pay_info = $this->model_catalog_information->getInformation(13);
				$data['pay_descr'] = html_entity_decode($pay_info['description'], ENT_QUOTES, 'UTF-8');
				$data['pay_title'] = $pay_info['title'];
				$warranty_info = $this->model_catalog_information->getInformation(15);
				$data['warranty_descr'] = html_entity_decode($warranty_info['description'], ENT_QUOTES, 'UTF-8');
				$data['warranty_title'] = $warranty_info['title'];
				$return_info = $this->model_catalog_information->getInformation(16);
				$data['return_descr'] = html_entity_decode($return_info['description'], ENT_QUOTES, 'UTF-8');
				$data['return_title'] = $return_info['title'];
				$bad_info = $this->model_catalog_information->getInformation(17);
				$data['bad_descr'] = html_entity_decode($bad_info['description'], ENT_QUOTES, 'UTF-8');
				$data['bad_title'] = $bad_info['title'];
			

		if ($information_info) {
			$output .= html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8') . "\n";
		}

		$this->response->setOutput($output);
	}
}