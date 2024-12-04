<<<<<<< HEAD
<?php
require_once './controllers/database.php';

class Category {
    private $conn;

    public function __construct() {
        $database = new Database();
        $this->conn = $database->getConnection();
    }

    public function getAllCategories() {
        $query = "SELECT * FROM categories";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
=======
<?php
require_once './controllers/database.php';

class Category {
    private $conn;

    public function __construct() {
        $database = new Database();
        $this->conn = $database->getConnection();
    }

    public function getAllCategories() {
        $query = "SELECT * FROM categories";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
>>>>>>> 0d7402ae12c4c70275ce0b8c9c61975bec6a8f1d
?>