<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
    <title>Tin tức</title>
</head>
<body>
    <h1>Danh sách tin tức</h1>
    <?php foreach ($news as $article): ?>
        <h2><a href="/news/detail/<?php echo $article['id']; ?>"><?php echo $article['title']; ?></a></h2>
        <p><?php echo substr($article['content'], 0, 100); ?>...</p>
    <?php endforeach; ?>
</body>
=======
<!DOCTYPE html>
<html>
<head>
    <title>Tin tức</title>
</head>
<body>
    <h1>Danh sách tin tức</h1>
    <?php foreach ($news as $article): ?>
        <h2><a href="/news/detail/<?php echo $article['id']; ?>"><?php echo $article['title']; ?></a></h2>
        <p><?php echo substr($article['content'], 0, 100); ?>...</p>
    <?php endforeach; ?>
</body>
>>>>>>> 0d7402ae12c4c70275ce0b8c9c61975bec6a8f1d
</html>