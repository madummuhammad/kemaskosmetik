<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Loader extends CI_Loader
{
	protected $layout = 'default';
	protected $title;
	protected $metadata	= [];
	protected $breadcrumbs = [];
	protected $css = [];
	protected $js = [];
	
	/**
	 * Constructor
	 * 
	 * @access public
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();
		
		$this->library('user_agent');
	}
	
	/**
	 * Set mobile view path
	 * 
	 * @access public
	 * @return void
	 */
	public function mobile()
	{
		$this->_ci_view_paths = array(APPPATH.'mobile_views/' => TRUE);
		return $this;
	}
	
	/**
	 * Set desktop view path
	 * 
	 * @access public
	 * @return void
	 */
	public function desktop()
	{
		$this->_ci_view_paths = array(APPPATH.'views/' => TRUE);
		return $this;
	}
	
	/**
	 * Set layout
	 *
	 * @param	string
	 * @return	void
	 */
	public function layout($layout)
	{
		$this->layout = $layout;
		return $this;
	}
	
	/**
	 * Set title
	 * 
	 * @access public
	 * @return void
	 */
	public function title()
	{
		if ($segments = func_get_args()) {
			$this->title = implode(' - ', $segments);
		}

		return $this;
	}
	
	/**
	 * Set breadcrumb
	 * 
	 * @access public
	 * @param string $text
	 * @param string $href
	 * @param array $child
	 * @param boolan $reset
	 * @return void
	 */
	public function breadcrumb($text, $href = '', $child = [], $reset = false)
	{
		if ($reset) $this->breadcrumbs = [];

		$this->breadcrumbs[] = array(
			'text' => $text,
			'href' => $href,
			'child' => $child
		);

		return $this;
	}
	
	/**
	 * Set metadata
	 * 
	 * @access public
	 * @param string $name
	 * @param string $content
	 * @param string $type
	 * @return void
	 */
	public function metadata($name, $content, $type = 'meta')
	{
		$name = htmlspecialchars(strip_tags($name));
		$content = trim(htmlspecialchars(strip_tags($content)));

		if ($name == 'keywords' && ! strpos($content, ',')) {
			$content = preg_replace('/[\s]+/', ', ', trim($content));
		}

		switch($type) {
			case 'meta':
				$meta = '<meta name="'.$name.'" content="'.$content.'" />';
				$this->metadata[$name] = $meta;
			break;

			case 'link':
				$link = '<link rel="'.$name.'" href="'.$content.'" />';
				$this->metadata[$content] = $link;
			break;

			case 'og':
				$meta = '<meta property="'.$name.'" content="'.$content.'" />';
				$this->metadata[md5($name.$content)] = $meta;
			break;
		}

		return $this;
	}
	
	/**
	 * Load View
	 *
	 * @param	string
	 * @param	array
	 * @param	bool
	 * @return	void
	 */
	public function view($view, $vars = [], $return = FALSE)
	{
		if (empty($this->title)) {
			$CI =& get_instance();
			$this->title = $CI->config->item('site_name');
		}
		
		$vars['template']['title'] = strip_tags($this->title);
		$vars['template']['breadcrumbs'] = $this->breadcrumbs;
		$vars['template']['metadata'] = implode("\n\t\t", $this->metadata);
		$vars['template']['css'] = implode("\n\t\t", $this->css);
		$vars['template']['js'] = implode("\n\t\t", $this->js);
		$vars['template']['body'] = $this->_view($view, $vars, TRUE);
		
		if($view == 'murdock') {
			$template = $this->_view('murdock');
		}
		else {
			if ( ! $this->layout) {
				$template = $this->_view($view, $vars, $return);
			} else {
				$template = $this->_view('layouts/'.$this->layout, $vars, $return);
			}
		}
		
		
		if ($return) {
			return $template;
		}
	}
	
	/**
	 * Original view function
	 *
	 * @param	string
	 * @param	array
	 * @param	bool
	 * @return	void
	 */
	protected function _view($view, $vars = [], $return = false)
	{
		if (method_exists($this, '_ci_object_to_array')) {
			return $this->_ci_load(array(
				'_ci_view' => $view, 
				'_ci_vars' => $this->_ci_object_to_array($vars), 
				'_ci_return' => $return
			));
		} else {
			return $this->_ci_load(array(
				'_ci_view' => $view, 
				'_ci_vars' => $this->_ci_prepare_view_vars($vars), 
				'_ci_return' => $return
			));
		}
	}
	
	/**
	 * Insert css line
	 * 
	 * @access public
	 * @param string $href
	 * @param string $rel
	 * @param string $media
	 * @return this
	 */
	public function css($href, $rel = 'stylesheet', $media = 'screen')
	{
		$this->css[$href] = '<link href="'.$href.'" rel="'.$rel.'" media="'.$media.'">';
		
		return $this;
	}
	
	/**
	 * Insert javascript line
	 * 
	 * @access public
	 * @param string $href
	 * @return this
	 */
	public function js($href)
	{
		$this->js[$href] = '<script src="'.$href.'"></script>';
		
		return $this;
	}
	
	/**
	 * Load payment module
	 * 
	 * @access public
	 * @param string $module
	 * @param string $file
	 * @return obj
	 */
	public function payment($module, $file = null)
	{
		$package = APPPATH.'payment_modules/'.$module;
		$file = $file ? $file : $module;
		
		if (is_dir($package)) {
			$this->add_package_path($package);
			
			if (file_exists($package.'/libraries/'.ucfirst($file).'.php')) {
				$obj = 'payment_'.$file;
				
				$this->library($file, null, $obj);
				
				$CI =& get_instance();
				
				return $CI->{$obj};
			} else {
				return false;
			}
			
			$this->remove_package_path($package);
		}
	}
}