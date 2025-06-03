<?php
try {
    $pdo = new PDO('mysql:host=localhost;dbname=webexam;charset=utf8', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

$posts = $pdo->query("SELECT id FROM posts")->fetchAll(PDO::FETCH_COLUMN);

$insertStmt = $pdo->prepare("INSERT INTO related_posts (post_1_id, post_2_id) VALUES (:post_1_id, :post_2_id)");

foreach ($posts as $postId) {
    $otherPosts = array_filter($posts, fn($id) => $id != $postId);
    shuffle($otherPosts);
    $relatedPosts = array_slice($otherPosts, 0, 3);

    foreach ($relatedPosts as $relatedId) {
        try {
            $insertStmt->execute([
                ':post_1_id' => $postId,
                ':post_2_id' => $relatedId
            ]);
        } catch (PDOException $e) {
            echo "Error inserting post_1_id=$postId post_2_id=$relatedId: " . $e->getMessage() . "\n";
        }
    }
}

echo "مقداردهی تصادفی related_posts انجام شد.";
