<?php

require_once APP_ROOT."/servers/newsServer.php";

class HomeController{

    public function index(){
        include APP_ROOT."/views/home/index.php";
    }

}