<?php

class AuthController extends Controller
{
  public function index()
  {
    $this->view("auth");
  }

  public function doRegister()
  {
    $user = new User($_POST);
    
    // $this->redirect();
  }

}