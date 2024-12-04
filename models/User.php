<<<<<<< HEAD
<?php
require_once './controllers/database.php';

class User {
    private $conn;

    public function __construct() {
        $database = new Database();
        $this->conn = $database->getConnection();
    }

    // Hàm đăng nhập
    public function login($username, $password) {
        $query = "SELECT * FROM users WHERE username = :username AND password = :password";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':password', $password);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Hàm đăng ký
    public function register($username, $password) {
        $query = "INSERT INTO users (username, password) VALUES (:username, :password)";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':password', $password);
        return $stmt->execute();
    }
}
=======
<?php
require_once './controllers/database.php';

class User {
    private $conn;

    public function __construct() {
        $database = new Database();
        $this->conn = $database->getConnection();
    }

    // Hàm đăng nhập
    public function login($username, $password) {
        $query = "SELECT * FROM users WHERE username = :username AND password = :password";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':password', $password);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Hàm đăng ký
    public function register($username, $password) {
        $query = "INSERT INTO users (username, password) VALUES (:username, :password)";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':password', $password);
        return $stmt->execute();
    }
}
>>>>>>> 0d7402ae12c4c70275ce0b8c9c61975bec6a8f1d
?>