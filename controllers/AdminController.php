<<<<<<< HEAD
<?php
require_once './models/News.php';
require_once './models/Category.php';
require_once './models/User.php';

class AdminController {
    public function login() {
        require_once './views/admin/login.php';
    }

    public function dashboard() {
        $newsModel = new News();
        $news = $newsModel->getAllNews();
        require_once './views/admin/dashboard.php';
    }

    public function addNews() {
        require_once './views/admin/news/add.php';
    }

    public function editNews($id) {
        $newsModel = new News();
        $article = $newsModel->getNewsById($id);
        require_once './views/admin/news/edit.php';
    }

    public function deleteNews($id) {
        $newsModel = new News();
        $newsModel->deleteNews($id);
        header('Location: /admin/dashboard');
    }
}
=======
<?php
require_once './models/News.php';
require_once './models/Category.php';
require_once './models/User.php';

class AdminController {
    public function login() {
        require_once './views/admin/login.php';
    }

    public function dashboard() {
        $newsModel = new News();
        $news = $newsModel->getAllNews();
        require_once './views/admin/dashboard.php';
    }

    public function addNews() {
        require_once './views/admin/news/add.php';
    }

    public function editNews($id) {
        $newsModel = new News();
        $article = $newsModel->getNewsById($id);
        require_once './views/admin/news/edit.php';
    }

    public function deleteNews($id) {
        $newsModel = new News();
        $newsModel->deleteNews($id);
        header('Location: /admin/dashboard');
    }
}
>>>>>>> 0d7402ae12c4c70275ce0b8c9c61975bec6a8f1d
?>