<h1>Sửa tin tức</h1>
<form method="POST">
    <label for="title">Tiêu đề</label>
    <input type="text" name="title" id="title" value="<?php echo $news['title']; ?>" required>
    
    <label for="content">Nội dung</label>
    <textarea name="content" id="content" required><?php echo $news['content']; ?></textarea>
    
    <label for="image">Ảnh</label>
    <input type="text" name="image" id="image" value="<?php echo $news['image']; ?>"> 
    <label for="category_id">Chuyên mục</label>
    <select name="category_id" id="category_id">
        <?php foreach ($categories as $category): ?>
            <option value="<?php echo $category['id']; ?>" <?php echo $category['id'] == $news['category_id'] ? 'selected' : ''; ?>><?php echo $category['name']; ?></option>
        <?php endforeach; ?>
    </select>

    <button type="submit">Cập nhật</button>
</form>
