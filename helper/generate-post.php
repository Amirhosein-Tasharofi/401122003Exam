<?php
$host = 'localhost';
$dbname = 'webexam';
$user = 'root';
$pass = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // گرفتن همه کاربران به همراه نامشون
    $users = $pdo->query("SELECT id, name FROM users")->fetchAll(PDO::FETCH_ASSOC);

    $stmt = $pdo->prepare("INSERT INTO posts (user_id, title, body, created_at, updated_at) VALUES (:user_id, :title, :body, NOW(), NOW())");

    $count = 0;
    foreach ($users as $user) {
        $userId = $user['id'];
        $userName = $user['name'];
        for ($i = 1; $i <= 5; $i++) {
            $title = "post $i by $userName";
            $body = "This is a sample body for post $i by $userName";

            $stmt->execute([
                ':user_id' => $userId,
                ':title' => $title,
                ':body' => $body
            ]);
            $count++;
        }
    }

    echo "✅ $count پست با موفقیت ایجاد شد.";
} catch (PDOException $e) {
    echo "❌ خطا: " . $e->getMessage();
}
?>
