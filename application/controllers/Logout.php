<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends MY_CONTROLLER {
  public function __construct(){
    parent::__construct();
  }

  public function index()
  {
    $this->session->sess_destroy();
    $this->session->unset_userdata('token');
    redirect('login');
  }
}