<?php

    require_once APP_ROOT."/servers/newsServer.php";
    $new = new newsServer();
    $newsList = $new->getAllNews();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<?= DOMAIN . "asset/style/main.css"; ?>">
    <script src="<?= DOMAIN . "asset/js/bootstrap.bundle.min.js"; ?>"></script>
</head>

<body>
    <h1>Danh sách tin tức</h1>
    <a href="<?= DOMAIN . "views/admin/news/add.php" ?>">Thêm mới tin tức</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tiêu đề</th>
                <th>Chuyên mục</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($newsList as $news): ?>
                <tr>
                    <td><?php echo $news['id']; ?></td>
                    <td><?php echo $news['title']; ?></td>
                    <!-- <td><?php echo $news['category_name']; ?></td> -->
                    <td>
                        <a href="index.php?controller=news&action=edit&id=<?php echo $news['id']; ?>">Sửa</a>
                        <a href="index.php?controller=news&action=delete&id=<?php echo $news['id']; ?>" onclick="return confirm('Bạn có chắc chắn muốn xóa không?')">Xóa</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>


</body>

</html>