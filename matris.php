<?php
$pdo = new PDO("mysql:host=localhost;dbname=webexam", "root", "");

// Step 1: دریافت لیست تمام پست‌ها
$postIds = [];
$stmt = $pdo->query("SELECT id FROM posts");
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $postIds[] = $row['id'];
}

// Step 2: خواندن related_posts
$related = [];
$stmt = $pdo->query("SELECT * FROM related_posts");
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $related[$row['post_1_id']][] = $row['post_2_id'];
    $related[$row['post_2_id']][] = $row['post_1_id']; // رابطه دوطرفه
}

// Step 3: خواندن post_views
$views = [];
$stmt = $pdo->query("SELECT * FROM post_views");
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $views[$row['post_id']] = (int) $row['views'];
}

// Step 4: ساخت ماتریس احتمال
$matrix = [];

foreach ($postIds as $i) {
    $row = [];

    if (!isset($related[$i])) {
        // اگر هیچ ارتباطی نداره، همه صفر
        foreach ($postIds as $j) {
            $row[$j] = 0;
        }
    } else {
        $relatedPosts = $related[$i];

        // مجموع بازدیدهای پست‌های مرتبط
        $sumViews = 0;
        foreach ($relatedPosts as $j) {
            $sumViews += $views[$j] ?? 0;
        }

        foreach ($postIds as $j) {
            if (in_array($j, $relatedPosts) && $sumViews > 0) {
                $row[$j] = round(($views[$j] ?? 0) / $sumViews, 4);
            } else {
                $row[$j] = 0;
            }
        }
    }

    $matrix[$i] = $row;
}

// نمایش ماتریس
echo "<pre>";
foreach ($matrix as $i => $row) {
    echo "Post $i:\t";
    foreach ($row as $j => $prob) {
        echo "[$j: $prob] ";
    }
    echo "\n";
}
echo "</pre>";
