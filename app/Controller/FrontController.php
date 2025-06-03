<?php 

namespace App\Controller;
use App\Model\User;
class FrontController{
    public static function home(){
        return view('home.php');
    }
    public static function register_successful(){
        return view('register_successful.php');
    }
    public static function dashboard(){
        if(isloggedin())
        {
            return view('dashboard.php');   
        }
        else return view('login.php');
        
    }

    public static function ranking(){
        if(isloggedin())
        {
            return view('Posts/ranked.php');   
        }
        else return view('login.php');
        
    }
}