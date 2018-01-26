<?php defined("BASEPATH") OR exit("No direct script access allowed");

class Yin extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('user/User_model');
        $this->user_id = isset($this->session->get_userdata()['user_details'][0]->id)?$this->session->get_userdata()['user_details'][0]->users_id:'1';
        $this->load->library('Ipinfo');
    }

    /**
     * This function is used to load page view
     * @return Void
     */
    public function index(){
        is_login();
        if(!isset($id) || $id == '') {
            $id = $this->session->userdata ('user_details')[0]->users_id;
        }
        $data['user_data'] = $this->User_model->get_users($id);
        // Create a new instance
        $ipInfo = new ipInfo ("5c6da81ac3fd7dfa4bee16914fb36183f030b6ae30c4bfd54eb34a1d5dd7aeeb");
        $userIP = $ipInfo->getIPAddress();
        //var_dump($ipInfo->getCity($userIP));
        $data['ipinfo'] = $ipInfo->getCountry($userIP);

        $this->load->view("include/yin-header");
        $this->load->view("index", $data);
        $this->load->view("include/yin-footer");
    }
}
?>