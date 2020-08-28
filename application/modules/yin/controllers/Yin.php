<?php defined("BASEPATH") OR exit("No direct script access allowed");

class Yin extends CI_Controller {

    function __construct() {
        parent::__construct();
        // Assign the CodeIgniter super-object
        $this->CI =& get_instance();
        $this->load->model('user/User_model');
        $this->load->model('Yin_model');
        $this->user_id = isset($this->session->get_userdata()['user_details'][0]->id)?$this->session->get_userdata()['user_details'][0]->users_id:'1';
        //$this->load->library('Ipinfo');
        $this->load->library('session');
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
        //$ipInfo = new ipInfo ("5c6da81ac3fd7dfa4bee16914fb36183f030b6ae30c4bfd54eb34a1d5dd7aeeb");
        //$userIP = $ipInfo->getIPAddress();
        //var_dump($ipInfo->getCity($userIP));
        //$data['ipinfo'] = $ipInfo->getCountry($userIP);

        $this->load->view("include/yin-header");
        $data["user_details"] = $this->session->userdata;
        $yin_year = $this->input->post('year');
        if($yin_year == "")
        {
            $yin_year = date("Y");
        }
        $data['pixels'] = $this->Yin_model->getYin($id, $yin_year);

        $this->session->set_userdata('pixels', $data['pixels']);
        $this->load->view("index", $data);
        $this->load->view("include/yin-footer");
    }

    public function insertOrUpdateDayScore(){
        is_login();
        $year = $this->input->post('year');
        if(!isset($id) || $id == '') {
            $user_id = $this->session->userdata ('user_details')[0]->users_id;
        }
        $data["result"] = $this->Yin_model->insertOrUpdateDayscoreModel($user_id, $year);
        echo json_encode($data);
    }

    public function selectedPixelData(){
        is_login();
        $date = $this->input->post('date');
        if(!isset($id) || $id == '') {
            $user_id = $this->session->userdata ('user_details')[0]->users_id;
        }
        //$data["user_id"] = $user_id;
        //$data["session"] = $_SESSION;
        $data["ok"] = 0;
        if ($user_id == $_SESSION["pixels"]["user_id"] && isset($_SESSION["pixels"]["pixel"][$date]))
        {
            $data["ok"] = 1;
            $data["data"] = $_SESSION["pixels"]["pixel"][$date];
        }
        echo json_encode($data);
    }

    public function checkSession(){
        $this->load->view("checkSession");
    }

    public function changeYear(){
        is_login();
        if(!isset($id) || $id == '') {
            $id = $this->session->userdata ('user_details')[0]->users_id;
        }
        $data['user_data'] = $this->User_model->get_users($id);

        $yin_year = $this->input->post('year');
        if($yin_year == "")
        {
            $yin_year = date("Y");
        }

        if(!isset($id) || $id == '') {
            $user_id = $this->session->userdata ('user_details')[0]->users_id;
        }
        $data['pixels'] = $this->Yin_model->getYin($id, $yin_year);

        $this->session->set_userdata('pixels', $data['pixels']);
        $data = buildPixelTable($data['pixels']);
        return $data;
    }

    public function updateMonthDay(){
        /*
         * This function is created to update all the records in the yin (table) to split the month and day for the new fields created in the table.
         */
        /*
            $data["result"] = $this->Yin_model->updateMonthDay();
            echo "<pre>";
            print_r($data);
            echo "</pre>";
        */
    }

    public function changeEncryption(){

        $data["result"] = $this->Yin_model->changeEncryption();
        echo "<pre>";
        print_r($data);
        echo "</pre>";

    }

    public function encryptionTypes() {
        /*$plaintext = 'Testing OpenSSL Functions';
        $methods = openssl_get_cipher_methods();
        //$clefSecrete = 'flight';
        echo '<pre>';
        foreach ($methods as $method) {
            $ivlen = openssl_cipher_iv_length($method);
            $clefSecrete = openssl_random_pseudo_bytes($ivlen);
            $iv = openssl_random_pseudo_bytes($ivlen);

            $encrypted = openssl_encrypt($plaintext, $method, $clefSecrete, OPENSSL_RAW_DATA, $iv);
            $decrypted = openssl_decrypt($encrypted, $method, $clefSecrete, OPENSSL_RAW_DATA, $iv);
            echo 'plaintext='.$plaintext. "\n";
            echo 'cipher='.$method. "\n";
            echo 'encrypted to: '.$encrypted. "\n";
            echo 'decrypted to: '.$decrypted. "\n\n";
        }
        echo '</pre>';*/

       /* $plaintext = 'Suresh';

        $cipher = "AES-128-CBC";
        $ivlen = openssl_cipher_iv_length($cipher);
        $key = openssl_random_pseudo_bytes($ivlen);
        $iv = openssl_random_pseudo_bytes($ivlen);
        $encrypted = openssl_encrypt($plaintext, $cipher, $key, OPENSSL_RAW_DATA, $iv );
        $decryped = openssl_decrypt($encrypted, $cipher, $key, OPENSSL_RAW_DATA, $iv);

        echo "Plain Text: ".$plaintext."<br/>";
        echo "Key: ".$key."<br/>";
        echo "Cipher: ".$cipher."<br/>";
        echo "IV LEN: ".$ivlen."<br/>";
        echo "IV: ".$iv."<br/>";
        echo "Encrypted: ".$encrypted."<br/>";
        echo "Decrypted: ".$decryped."<br/>";*/
    }

}
?>