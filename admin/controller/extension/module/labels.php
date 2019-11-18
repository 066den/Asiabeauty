<?php
class Controllerextensionmodulelabels extends Controller {
	private $error = array();

	public function index() {

		$this->load->language('extension/module/labels');

		$this->load->model('localisation/language');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('labels_', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['entry_key'] = $this->language->get('entry_key');

		$data['entry_sold_status'] = $this->language->get('entry_sold_status');
		$data['entry_last_status'] = $this->language->get('entry_last_status');
		$data['text_sold'] = $this->language->get('text_sold');
		$data['text_sale'] = $this->language->get('text_sale');
		$data['text_last'] = $this->language->get('text_last');
		$data['entry_sale_type'] = $this->language->get('entry_sale_type');
		$data['text_percent'] = $this->language->get('text_percent');
		$data['text_text'] = $this->language->get('text_text');
		$data['text_bestseller'] = $this->language->get('text_bestseller');
		$data['entry_limit_bestseller'] = $this->language->get('entry_limit_bestseller');
		$data['text_new'] = $this->language->get('text_new');
		$data['entry_limit_new'] = $this->language->get('entry_limit_new');
		$data['entry_labels_status'] = $this->language->get('entry_labels_status');
		$data['entry_sold_id'] = $this->language->get('entry_sold_id');
		$data['entry_bestseller_text'] = $this->language->get('entry_bestseller_text');
		$data['entry_bestseller_bg'] = $this->language->get('entry_bestseller_bg');
		$data['entry_new_text'] = $this->language->get('entry_new_text');
		$data['entry_new_bg'] = $this->language->get('entry_new_bg');
		$data['entry_last_text'] = $this->language->get('entry_last_text');
		$data['entry_last_bg'] = $this->language->get('entry_last_bg');
		$data['entry_sold_text'] = $this->language->get('entry_sold_text');
		$data['entry_sold_bg'] = $this->language->get('entry_sold_bg');
		$data['entry_sale_text'] = $this->language->get('entry_sale_text');
		$data['entry_sale_bg'] = $this->language->get('entry_sale_bg');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/labels', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['action'] = $this->url->link('extension/module/labels', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['labels_status'])) {
			$data['labels_status'] = $this->request->post['labels_status'];
		} else {
			$data['labels_status'] = $this->config->get('labels_status');
		}

		if (isset($this->request->post['labels_last_status'])) {
			$data['labels_last_status'] = $this->request->post['labels_last_status'];
		} else {
			$data['labels_last_status'] = $this->config->get('labels_last_status');
		}

		if (isset($this->request->post['labels_sold_status'])) {
			$data['labels_sold_status'] = $this->request->post['labels_sold_status'];
		} else {
			$data['labels_sold_status'] = $this->config->get('labels_sold_status');
		}

		if (isset($this->request->post['labels_new'])) {
			$data['labels_new'] = $this->request->post['labels_new'];
		} elseif ($this->config->get('labels_new')) {
			$data['labels_new'] = $this->config->get('labels_new');
		} else {
			$data['labels_new'] = 14;
		}


		if (isset($this->request->post['labels_bestseller'])) {
			$data['labels_bestseller'] = $this->request->post['labels_bestseller'];
		} elseif ($this->config->get('labels_bestseller')) {
			$data['labels_bestseller'] = $this->config->get('labels_bestseller');
		} else {
			$data['labels_bestseller'] = 50;
		}
		
		$data['languages'] = $this->model_localisation_language->getLanguages();

		foreach ($data['languages'] as $language) {

			if (isset($this->request->post['labels_new_text'][$language['language_id']])) {
				$data['labels_new_text'][$language['language_id']] = $this->request->post['labels_new_text'][$language['language_id']];
			} elseif ($this->config->get('labels_new_text-'.$language['language_id'])) {
				$data['labels_new_text'][$language['language_id']] = $this->config->get('labels_new_text-'.$language['language_id']);
			} else {
				$data['labels_new_text'][$language['language_id']] = "New";
			}

			if (isset($this->request->post['labels_bestseller_text'][$language['language_id']])) {
				$data['labels_bestseller_text'][$language['language_id']] = $this->request->post['labels_bestseller_text'][$language['language_id']];
			} elseif ($this->config->get('labels_bestseller_text-'.$language['language_id'])) {
				$data['labels_bestseller_text'][$language['language_id']] = $this->config->get('labels_bestseller_text-'.$language['language_id']);
			} else {
				$data['labels_bestseller_text'][$language['language_id']] = "Bestseller";
			}

			if (isset($this->request->post['labels_last_text'][$language['language_id']])) {
				$data['labels_last_text'][$language['language_id']] = $this->request->post['labels_last_text'][$language['language_id']];
			} elseif ($this->config->get('labels_last_text-'.$language['language_id'])) {
				$data['labels_last_text'][$language['language_id']] = $this->config->get('labels_last_text-'.$language['language_id']);
			} else {
				$data['labels_last_text'][$language['language_id']] = "Last";
			}

			if (isset($this->request->post['labels_sold_text'][$language['language_id']])) {
				$data['labels_sold_text'][$language['language_id']] = $this->request->post['labels_sold_text'][$language['language_id']];
			} elseif ($this->config->get('labels_sold_text-'.$language['language_id'])) {
				$data['labels_sold_text'][$language['language_id']] = $this->config->get('labels_sold_text-'.$language['language_id']);
			} else {
				$data['labels_sold_text'][$language['language_id']] = "Sold";
			}

			if (isset($this->request->post['labels_sale_text'][$language['language_id']])) {
				$data['labels_sale_text'][$language['language_id']] = $this->request->post['labels_sale_text'][$language['language_id']];
			} elseif ($this->config->get('labels_sale_text-'.$language['language_id'])) {
				$data['labels_sale_text'][$language['language_id']] = $this->config->get('labels_sale_text-'.$language['language_id']);
			} else {
				$data['labels_sale_text'][$language['language_id']] = "Sale";
			}
		}

		if (isset($this->request->post['labels_new_bg'])) {
			$data['labels_new_bg'] = $this->request->post['labels_new_bg'];
		} elseif ($this->config->get('labels_new_bg')) {
			$data['labels_new_bg'] = $this->config->get('labels_new_bg');
		} else {
			$data['labels_new_bg'] = "#1b95e0";
		}

		if (isset($this->request->post['labels_bestseller_bg'])) {
			$data['labels_bestseller_bg'] = $this->request->post['labels_bestseller_bg'];
		} elseif ($this->config->get('labels_bestseller_bg')) {
			$data['labels_bestseller_bg'] = $this->config->get('labels_bestseller_bg');
		} else {
			$data['labels_bestseller_bg'] = "#e36397";
		}

		if (isset($this->request->post['labels_last_bg'])) {
			$data['labels_last_bg'] = $this->request->post['labels_last_bg'];
		} elseif ($this->config->get('labels_last_bg')) {
			$data['labels_last_bg'] = $this->config->get('labels_last_bg');
		} else {
			$data['labels_last_bg'] = "#ff6600";
		}

		if (isset($this->request->post['labels_sold_bg'])) {
			$data['labels_sold_bg'] = $this->request->post['labels_sold_bg'];
		} elseif ($this->config->get('labels_sold_bg')) {
			$data['labels_sold_bg'] = $this->config->get('labels_sold_bg');
		} else {
			$data['labels_sold_bg'] = "#999";
		}

		if (isset($this->request->post['labels_sale_bg'])) {
			$data['labels_sale_bg'] = $this->request->post['labels_sale_bg'];
		} elseif ($this->config->get('labels_sale_bg')) {
			$data['labels_sale_bg'] = $this->config->get('labels_sale_bg');
		} else {
			$data['labels_sale_bg'] = "#f14a46";
		}
		
		if (isset($this->request->post['labels_sale_type'])) {
			$data['labels_sale_type'] = $this->request->post['labels_sale_type'];
		} else {
			$data['labels_sale_type'] = $this->config->get('labels_sale_type');
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/labels.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/labels')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}
}