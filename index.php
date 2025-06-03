<?php

session_start();
define('ROOT_PATH',__DIR__);
require __DIR__.'/vendor/autoload.php';
require_once(__DIR__.'/helper/functions.php');


use App\Route;
use App\Controller\FrontController;
use App\Controller\AuthController;
use App\Controller\LogoutController;
use App\Controller\PostController;
use Illuminate\Database\Capsule\Manager as Capsule;


$config = require __DIR__.'/config/database.php';
$capsule = new Capsule;
$capsule->addConnection($config);
$capsule->setAsGlobal();
$capsule->bootEloquent();


$route = new Route();
$route->addRoute("GET","/webexam/",[FrontController::class, 'home']);
$route->addRoute("GET",'/webexam/dashboard',[FrontController::class, 'dashboard']);
$route->addRoute("GET","/webexam/register_successful",[FrontController::class, 'register_successful']);
$route->addRoute("GET","/webexam/post/ranking",[FrontController::class, 'ranking']);



// login - register - logout

$route->addRoute("GET","/webexam/login",[AuthController::class, 'login']);
$route->addRoute("POST",'/webexam/login',[AuthController::class, 'loginuser']);
$route->addRoute("GET","/webexam/register",[AuthController::class, 'register']);
$route->addRoute("POST","/webexam/register",[AuthController::class, 'storeuser']);
$route->addRoute("GET", "/webexam/logout", [LogoutController::class, 'handle']);


// posts
$route->addRoute("GET",'/webexam/post',[PostController::class, 'index']);
$route->addRoute("GET",'/webexam/post/create',[PostController::class, 'create']);
$route->addRoute("POST",'/webexam/post/create',[PostController::class, 'store']);
$route->addRoute("GET",'/webexam/post/show',[PostController::class, 'show']);
$route->addRoute("GET", "/webexam/post/delete", [PostController::class, 'delete']);
$route->addRoute("GET", "/webexam/post/edit", [PostController::class, 'edit']);     // نمایش فرم
$route->addRoute("POST", "/webexam/post/update", [PostController::class, 'update']); // ذخیره تغییرات

$route->addRoute("GET", "/webexam/post/ranked", [PostController::class, 'ranked']);
$route->addRoute("GET", "/webexam/post/rankingpost", [PostController::class, 'rankedByEigen']);


$route->addRoute("GET", "/webexam/generate-relations", [PostController::class, 'generateRelations']);






$route->dispatch();
