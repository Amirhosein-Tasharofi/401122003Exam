<?php
$host = 'localhost';
$dbname = 'webexam';
$user = 'root';
$pass = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // گرفتن همه پست‌ها
    $posts = $pdo->query("SELECT id FROM posts")->fetchAll(PDO::FETCH_ASSOC);

    $stmtInsert = $pdo->prepare("INSERT INTO post_views (post_id, views) VALUES (:post_id, :views)");

    $count = 0;
    foreach ($posts as $post) {
        $postId = $post['id'];
        $views = rand(100, 1000);

        $stmtInsert->execute([
            ':post_id' => $postId,
            ':views' => $views
        ]);
        $count++;
    }

    echo "✅ تعداد $count رکورد در جدول post_views ایجاد شد.";
} catch (PDOException $e) {
    echo "❌ خطا: " . $e->getMessage();
}
?>
