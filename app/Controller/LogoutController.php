<?php

namespace App\Controller;

class LogoutController
{
    public static function handle()
    {
        session_start();
        session_unset();
        session_destroy();

        header("Location: /webexam/");
        exit;
    }
}
