<?php
class Yin_model extends CI_Model {
	function __construct(){            
	  	parent::__construct();
		$this->user_id = isset($this->session->get_userdata()['user_details'][0]->id)?$this->session->get_userdata()['user_details'][0]->users_id:'1';
        $this->load->helper('my_helper');
        $this->load->library('session');
	}

    public function getYin($user_id, $yin_year)
    {
        $year = $yin_year;
        $sql = "SELECT * FROM yin WHERE user_id = ? AND year = ?";
        $query = $this->db->query($sql, array($user_id, $year));

        $row = $query->row();
        $result["ok"] = 0;

        if ($query->result_id->num_rows > 0)
        {
            $result["ok"] = 1;
            $result["user_id"] = $user_id;
            $pixels = (array) $query->result_object;
            $date_pixel = array();
            foreach( $pixels as $pixel )
            {
                //$pixel->comment = html_entity_decode(decryptIt($pixel->comment));
                //$pixelComment = openssl_decrypt($pixel->comment, $cipher, $key, $options = 0, $iv);
                $pixelComment = encrypt_decrypt("decrypt", $pixel->comment);

                $pixel->comment = $pixelComment;

                $date_pixel[$pixel->date] = (array) $pixel;
                //$date_pixel[$pixel->date] = (array) $pixel;
            }
            //$result["result"] = (array) $query->result_object;
            $result["pixel"] = $date_pixel;
        }
        $result["selectedYear"] = $year;
        return $result;
    }

	public function insertOrUpdateDayscoreModel($user_id, $year)
    {
        //$cleanHTML = htmlentities($this->input->post('commentForTheDay'), ENT_QUOTES);
        $cleanHTML = $this->input->post('commentForTheDay');


        //$encryptedText = openssl_encrypt($cleanHTML, $cipher, $key, $options = 0, $iv);

        $encryptedText = encrypt_decrypt("encrypt", $cleanHTML);
        $data = array(
            'dayscore_id' => $this->input->post('dayScore'),
            'comment' => $encryptedText,
            'modified_datetime' => date("Y-m-d H:i:s")
        );
        $mode = $this->input->post('mode');
        $selectedDate = $this->input->post('selectedDate');
        $month = substr($selectedDate,4,-2);
        $day = substr($selectedDate,6);
        $result["ok"] = false;
        if ($mode == "insert") {
            $data["user_id"] = $user_id;
            $data["year"] = $year;
            $data["month"] = $month;
            $data["day"] = $day;
            $data["date"] = $selectedDate;
            $data["created_datetime"] = date("Y-m-d H:i:s");
            $result["ok"] = $this->db->insert('yin', $data);
        } else if ($mode == "update") {
            //$result["condition"] = $condition;
            //$condition = "`yin`.`user_id` = ".$this->user_id." AND `yin`.`date` = ".$this->input->post('selectedDate');
            $this->db->set($data);
            $this->db->where('user_id', $user_id);
            $this->db->where('date', $selectedDate);
            //$this->db->where($condition);
            $result["ok"] = $this->db->update('yin');
        }
        if ($result["ok"] == 1) {
            $_SESSION["pixels"]["pixel"][$selectedDate] = $data;
            $_SESSION["pixels"]["pixel"][$selectedDate]["comment"] = htmlentities($this->input->post('commentForTheDay'), ENT_QUOTES);
        }
        $result["data"] = $data;
        return $result;
    }

    public function updateMonthDay()
    {
        /*
         * This function is created to update all the records in the yin (table) to split the month and day for the new fields created in the table.
         */
        /*

        $sql = "SELECT id, date, month, day FROM yin";
        $query = $this->db->query($sql);

        $row = $query->row();
        $result["ok"] = 0;

        if ($query->result_id->num_rows > 0) {
            $result["ok"] = 1;
            $result["result_object"] = (array) $query->result_object;

            foreach ($result["result_object"] as $row) {

                $month = substr($row->date,4,-2);
                $day =  substr($row->date,6);
                $data = array(
                    'month' => $month,
                    'day' => $day
                );
                $this->db->set($data);
                $this->db->where('id', $row->id);
                $result["udpated_result"] = $this->db->update('yin');
            }

        }
        return $result;

        */
    }

    public function changeEncryption()
    {
        /*$sql = "SELECT id, comment FROM yin";
        $query = $this->db->query($sql);

        $row = $query->row();
        $result["ok"] = 0;

        if ($query->result_id->num_rows > 0) {
            $result["ok"] = 1;
            $result["result_object"] = (array)$query->result_object;

            foreach ($result["result_object"] as $row) {
                $row->decrypted = decryptIt ($row->comment);
                $key = SALTKEY;
                $cipher = "AES-256-OFB";
                $ivlen = openssl_cipher_iv_length($cipher);
                $iv = openssl_random_pseudo_bytes($ivlen);
                $decryptedText = htmlentities($row->decrypted, ENT_QUOTES);
                $row->encryptedText = openssl_encrypt($decryptedText, $cipher, $key, null, $iv);
                $row->decryptedText = html_entity_decode(openssl_decrypt($row->encryptedText, $cipher, $key, null, $iv));
            }
            return $result;
        }*/

       /* $sql = "SELECT id, comment FROM yin";
        $query = $this->db->query($sql);

        $row = $query->row();
        $result["ok"] = 0;

        if ($query->result_id->num_rows > 0) {
            $result["ok"] = 1;
            $result["result_object"] = (array)$query->result_object;

            foreach ($result["result_object"] as $row) {
                $row->decrypted = decryptIt ($row->comment);
                $key = random_bytes(32);
                $cipher = "AES-128-OFB";
                $ivlen = openssl_cipher_iv_length($cipher);
                $iv = openssl_random_pseudo_bytes($ivlen);
                $decryptedText = htmlentities($row->decrypted, ENT_QUOTES);
                $row->encryptedText = encrypt_decrypt("encrypt", $decryptedText);

                //$row->encryptedText = encryptItSSL($decryptedText);
                //$row->decryptedText = html_entity_decode(decryptItSSL($row->encryptedText));
                //$row->encryptedText = openssl_encrypt($decryptedText, $cipher, $key, null, $iv);
                //$row->decryptedText = html_entity_decode(openssl_decrypt($row->encryptedText, $cipher, $key, null, $iv));
                $row->decryptedText = html_entity_decode(encrypt_decrypt("decrypt", $row->encryptedText));
                //$row->decryptedText = decryptItSSL($row->encryptedText);
                //$row->decryptedText = $iv;
            }
            return $result;
        }*/

        /*
         * This function is created to update all the records in the yin (table) to to modify the Encryption
         */


        $sql = "SELECT id, comment FROM yin";
        $query = $this->db->query($sql);

        $row = $query->row();
        $result["ok"] = 0;

        if ($query->result_id->num_rows > 0) {
            $result["ok"] = 1;
            $result["result_object"] = (array)$query->result_object;

            foreach ($result["result_object"] as $row) {
                $row->decrypted = decryptIt ($row->comment);
                $decryptedText = htmlentities($row->decrypted, ENT_QUOTES);
                $row->encryptedText = encrypt_decrypt("encrypt", $decryptedText);
                //$row->decryptedText = html_entity_decode(openssl_decrypt($row->comment, $cipher, $key, null, $iv));


                //$row->encryptedText = encryptItSSL(htmlentities($row->decrypted, ENT_QUOTES));
                //$row->decryptedText = html_entity_decode(decryptItSSL($row->encryptedText));

                $data = array(
                    'comment' => $row->encryptedText
                );
                $this->db->set($data);
                $this->db->where('id', $row->id);
                $result["udpated_result"] = $this->db->update('yin');

            }
            return $result;
        }

        /*$sql = "SELECT id, comment FROM yin";
        $query = $this->db->query($sql);

        $row = $query->row();
        $result["ok"] = 0;

        if ($query->result_id->num_rows > 0) {
            $result["ok"] = 1;
            $result["result_object"] = (array)$query->result_object;

            foreach ($result["result_object"] as $row) {
                //$row->decrypted = decryptIt ($row->comment);
                $key = SALTKEY;
                $cipher = "AES-256-OFB";
                $ivlen = openssl_cipher_iv_length($cipher);
                $iv = openssl_random_pseudo_bytes($ivlen);
                //$decryptedText = htmlentities($row->comment, ENT_QUOTES);
                //$row->encryptedText = openssl_encrypt($decryptedText, $cipher, $key, $options = 0, $iv);
                $row->decryptedText = html_entity_decode(openssl_decrypt($row->comment, $cipher, $key, $options = 0, $iv));

            }
            return $result;
        }*/


    }
}