<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}


			    if ($this->request->server['HTTPS']) {
			        $server = $this->config->get('config_ssl');
		        } else {
			        $server = $this->config->get('config_url');
		        }
			    $data['config_image'] = $server . 'image/' . $this->config->get('config_image');
				$this->load->language('information/information');
				$this->load->model('catalog/information');
				$about_id = 4;
				$about_info = $this->model_catalog_information->getInformation($about_id);
				$data['about_descr'] = html_entity_decode(substr($about_info['description'], 0, 1044), ENT_QUOTES, 'UTF-8');
				$data['about_href'] = $this->url->link('information/information', 'information_id=' .  $about_id);
			
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
