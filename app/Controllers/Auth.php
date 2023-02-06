<?php

namespace App\Controllers;
use App\Models\AuthModel;

class Auth extends BaseController
{
    public function __construct()
    {
        $this->AuthModel = new AuthModel();
    }
    public function index()
    {
        return view('index');
    }

    public function login()
    {
        $username = $this->request->getVar('username');
        $password = $this->request->getVar('password');
        $pegawai = $this->AuthModel->login($username);

        if($pegawai){
            if($password == $pegawai['password']){
                $mySession = session();
                $myArray = [
                    'username' => $pegawai['username'],
                    'id_bagian' => $pegawai['id_bagian'],
                ];
                $mySession->set($myArray);

                if($pegawai['id_bagian']==7){
                    return redirect()->to(base_url('admin'));
                }else{
                    return redirect()->to(base_url('user'));
                }
            } else{
                return redirect()->to(base_url('auth'))->with('error','Password salah');
            }
        } else {
            return redirect()->to(base_url('auth'))->with('error','Pegawai tidak ada');
        }

    }
}