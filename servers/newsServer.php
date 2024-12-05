<?php

require_once(APP_ROOT . "/libs/DBConnection.php");

class newsServer
{
    public function getAllNews()
    {
        $sqlAllNews = "SELECT * FROM news;";
        $DB_con = new DBConnection();
        $st = null;

        try {
            $con = $DB_con->getCon();
            $st = $con->prepare($sqlAllNews);
            $st->execute();

            $rs = $st->fetchAll(PDO::FETCH_ASSOC);
            return $rs;
        } catch (PDOException $e) {
            echo "Lỗi: " . $e->getMessage() . "<br>";
        } finally {
            try {
                $con = null;
                $st = null;
            } catch (PDOException $e) {
                echo "Lỗi: " . $e->getMessage() . "<br>";
            }
        }
    }

    public function getNewsById($id){

    }

    public function createNews($title, $content, $image){
        {
            $sqlIst = "INSERT INTO news(title, content, image) VALUES (:title, :content, :image);";
            $DB_con = new DBConnection();
            $st = null;
        
            try {
                $con = $DB_con->getCon();
                $st = $con->prepare($sqlIst);
                $st->bindParam(":title", $title);
                $st->bindParam(":content", $content);
                $st->bindParam(":image", $image);
                $st->execute();
        
                echo "Thêm thành công!";
            } catch (PDOException $e) {
                echo "Lỗi: " . $e->getMessage() . "<br>";
            } finally {
                try {
                    $con = null;
                    $st = null;
                } catch (PDOException $e) {
                    echo "Lỗi: " . $e->getMessage() . "<br>";
                }
            }
        }
    }

    public function updateNews($title, $content, $image, $idNews){
        {
            $sqlUp = "UPDATE flowers SET title = :title, content = :content, image = :image WHERE idNews = :idNews;";
            $DB_con = new DBConnection();
            $st = null;
        
            try {
                $con = $DB_con->getCon();
                $st = $con->prepare($sqlUp);
                $st->bindParam(":title", $title);
                $st->bindParam(":content", $content);
                $st->bindParam(":image", $image);
                $st->bindParam(":idNews", $idNews, PDO::PARAM_INT);
                $st->execute();
        
                echo "Update thành công!";
            } catch (PDOException $e) {
                echo "Lỗi: " . $e->getMessage() . "<br>";
            } finally {
                try {
                    $con = null;
                    $st = null;
                } catch (PDOException $e) {
                    echo "Lỗi: " . $e->getMessage() . "<br>";
                }
            }
        }
    }

    public function deleteNews($idNews){
        {
            $sqlIst = "DELETE FROM flowers WHERE idNews = :idNews;";
            $DB_con = new DBConnection();
            $st = null;
        
            try {
                $con = $DB_con->getCon();
                $st = $con->prepare($sqlIst);
                $st->bindParam(":idNews", $idNews, PDO::PARAM_INT);
                $st->execute();
        
                echo "Delete thành công!";
            } catch (PDOException $e) {
                echo "Lỗi: " . $e->getMessage() . "<br>";
            } finally {
                try {
                    $con = null;
                    $st = null;
                } catch (PDOException $e) {
                    echo "Lỗi: " . $e->getMessage() . "<br>";
                }
            }
        }
    }

}
