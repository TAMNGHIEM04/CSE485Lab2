<<<<<<< HEAD
<?php
require_once './controllers/HomeController.php';
require_once './controllers/AdminController.php';

$url = isset($_GET['url']) ? $_GET['url'] : 'home/index';
$urlParts = explode('/', $url);

$controllerName = ucfirst($urlParts[0]) . 'Controller';
$methodName = isset($urlParts[1]) ? $urlParts[1] : 'index';
$param = isset($urlParts[2]) ? $urlParts[2] : null;

if (file_exists("./controllers/$controllerName.php")) {
    require_once "./controllers/$controllerName.php";
    $controller = new $controllerName();
    if (method_exists($controller, $methodName)) {
        $controller->$methodName($param);
    } else {
        echo "Method not found!";
    }
} else {
    echo "Controller not found!";
}
=======
<?php
require_once './controllers/HomeController.php';
require_once './controllers/AdminController.php';

$url = isset($_GET['url']) ? $_GET['url'] : 'home/index';
$urlParts = explode('/', $url);

$controllerName = ucfirst($urlParts[0]) . 'Controller';
$methodName = isset($urlParts[1]) ? $urlParts[1] : 'index';
$param = isset($urlParts[2]) ? $urlParts[2] : null;

if (file_exists("./controllers/$controllerName.php")) {
    require_once "./controllers/$controllerName.php";
    $controller = new $controllerName();
    if (method_exists($controller, $methodName)) {
        $controller->$methodName($param);
    } else {
        echo "Method not found!";
    }
} else {
    echo "Controller not found!";
}
>>>>>>> 0d7402ae12c4c70275ce0b8c9c61975bec6a8f1d
?>