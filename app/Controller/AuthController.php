<?php 

namespace App\Controller;
use App\Model\User;
class AuthController{
    public static function login()
    {
        if(isloggedin())
        {
            return redirect('/webexam/dashboard');   
        }
        return view('login.php');
    }
    public static function register()
    {
        if(isloggedin())
        {
            return redirect('/webexam/dashboard');
        }
        return view('register.php');
    }
    public static function storeuser()
    {
        $password = password_hash($_POST['password'],PASSWORD_BCRYPT);
        $user = User::create(['name'=>$_POST['name'],
                      'email'=>$_POST['email'],
                      'password'=>$password
                ]);
                header("Location: /webexam/register_successful");
        exit();
    }
    public static function loginuser()
{
    $username = $_POST['email'];
    $userpass = $_POST['password'];
    $user = User::where('email', $username)->first();

    if ($user && password_verify($userpass, $user->password)) {
        $_SESSION['user'] = [
            'id' => $user->id,
            'username' => $user->name,
            'email' => $user->email
        ];
        return redirect('/webexam/dashboard');
    } else {
        return redirect('/webexam/login');
    }
}

}