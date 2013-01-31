<?php    
class ControllerCatalogFreelimit extends Controller {
	private $error = array();
  
  	public function index() {
		$this->load->language('catalog/manufacturer');
		$this->document->setTitle('Cantidad l&iacute;mite para entrega gratuita');
		$this->load->model('catalog/manufacturer');
                $this->getList();
  	}
    
  	private function getList() {
            
                $this->document->addScript('view/javascript/jquery/emaillog.js');            
                $this->load->model('setting/setting');
                
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'name';
		}
		
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
				
		$url = '';
			
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => 'Cantidad l&iacute;mite para entrega gratuita',
			'href'      => $this->url->link('catalog/free_limit', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			
			$this->model_setting_setting->editSetting('free_limit_shipping', $this->request->post);
			$this->session->data['success'] = $this->language->get('text_success');
			$this->redirect($this->url->link('catalog/free_limit', 'token=' . $this->session->data['token'], 'SSL'));
		}
                
		if (isset($this->error['free_limit_shipping'])) {
			$this->data['error_free_limit_shipping'] = $this->error['free_limit_shipping'];
		} else {
			$this->data['error_free_limit_shipping'] = '';
		}
                
		if (isset($this->request->post['free_limit_shipping'])) {
			$this->data['free_limit_shipping'] = $this->request->post['free_limit_shipping'];
		} else {
			$this->data['free_limit_shipping'] = $this->config->get('free_limit_shipping');
		}
                
                $this->data['heading_title'] = 'Cantidad l&iacute;mite para entrega gratuita';
                
                $this->data['action'] = $this->url->link('catalog/free_limit', 'token=' . $this->session->data['token'] . $url, 'SSL');
                
                $this->data['token'] = $this->session->data['token'];
                
		$this->template = 'catalog/free_limit.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		$this->response->setOutput($this->render());
	}
        

	private function validate() {
		if (!$this->user->hasPermission('modify', 'setting/setting')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
                
		if (!$this->request->post['free_limit_shipping']) {
			$this->error['free_limit_shipping'] = 'Escriba una cantidad v&aacute;lida.';
		}
                
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
        
        
        
}
?>