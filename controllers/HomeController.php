<?php
require_once './models/News.php';
require_once './models/Category.php';

class HomeController {
    public function index() {
        $newsModel = new News();
        $news = $newsModel->getAllNews();
        require_once './views/home/index.php';
    }

    public function detail($id) {
        $newsModel = new News();
        $article = $newsModel->getNewsById($id);
        require_once './views/home/detail.php';
    }
}
?>