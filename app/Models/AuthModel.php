<?php

namespace App\Models;

use CodeIgniter\Model;

class AuthModel extends Model {
    public function login($username){
        return $this->db->table('pegawai')->where(array(
            'username'=>$username
        ))->get()->getRowArray();
    }
}