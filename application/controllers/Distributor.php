<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Distributor extends MY_Controller
{
	/**
	 * Constructor
	 * 
	 * @access public
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();
	}
	
	public function index()
	{
		$this->load->view('distributor');

	}
}