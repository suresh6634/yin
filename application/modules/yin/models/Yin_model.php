<?php
class Yin_model extends CI_Model {
	function __construct(){            
	  	parent::__construct();
		$this->user_id = isset($this->session->get_userdata()['user_details'][0]->id)?$this->session->get_userdata()['user_details'][0]->users_id:'1';
	}

    public function getYin($user_id)
    {
        $year = 2018;
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
                $date_pixel[$pixel->date] = (array) $pixel;
            }

            //$result["result"] = (array) $query->result_object;
            $result["pixel"] = $date_pixel;
        }

        return $result;
    }

	public function insertOrUpdateDayscoreModel($user_id, $year)
    {
        $data = array(
            'user_id' => $user_id,
            'year' => $year,
            'dayscore_id' => $this->input->post('dayScore'),
            'comment' => $this->input->post('commentForTheDay'),
            'modified_datetime' => date("Y-m-d H:i:s")
        );
        $mode = $this->input->post('mode');
        $result["ok"] = false;
        if ($mode == "insert") {
            $data["date"] = $this->input->post('selectedDate');
            $data["created_datetime"] = date("Y-m-d H:i:s");
            $result["ok"] = $this->db->insert('yin', $data);
        } else if ($mode == "update") {
            //$condition = "`yin`.`user_id` = ".$this->user_id." AND `yin`.`date` = ".$this->input->post('selectedDate');
            //$result["condition"] = $condition;
            $this->db->where('user_id', $this->user_id);
            $this->db->where('date', $this->input->post('selectedDate'));
            //$this->db->where($condition);
            $result["ok"] = $this->db->update('yin', $data);
        }
        $result["data"] = $data;
        return $result;
    }
}