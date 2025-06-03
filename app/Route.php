<?php
namespace App;
 
class Route{
    private $routes=[];
    public function addRoute($method="GET",$path="/",$handle=null)
    {
        $this->routes[]=[
            'method' => $method,
            'path' => $path,
            'handle' => $handle
        ];
    }
    public function dispatch()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        $uri = parse_url($_SERVER['REQUEST_URI'],PHP_URL_PATH);
        foreach($this->routes as $route)
        {
            if($route['method'] == $method && $route['path'] == $uri )
            {
                call_user_func($route['handle']);
                return;
            }
        }
        return require_once(ROOT_PATH . '/Views/404.php');

    }   
} 
?>