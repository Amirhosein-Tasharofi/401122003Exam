<?php 

namespace App\Controller;
use App\Model\Post;
use App\Model\PostView;
use App\Model\RelatedPost;
use Illuminate\Database\Capsule\Manager as Capsule;



class PostController{
    public static function index()
    {
        if(isloggedin())
        {
            return view("Posts/index.php");   
        }
        else return view('login.php');
    }
    public static function create()
    {
        var_dump($_SESSION);
        return view("posts/create.php");
        
    }
    public static function show()
    {
        return view('posts/show.php');

    }
    
    public static function store()
{
    $title = $_POST['title'];
    $body = $_POST['body'];
    $user_id = $_SESSION['user']['id'];

    // ذخیره پست و گرفتن خروجی در $post
    $post = Post::create([
        'title' => $title,
        'body' => $body,
        'user_id' => $user_id
    ]);

    // فقط اگر پست ساخته شد، PostView هم بساز
    if ($post) {
        PostView::create([
            'post_id' => $post->id,
            'views' => rand(100, 1000)
        ]);
    }

    return redirect("/webexam/post");
}




    public static function edit()
    {
        $id = $_GET['id'] ?? null;

    if (!$id) {
        return redirect('/webexam/post');
    }

    $post = Post::find($id);
    if (!$post) {
        return redirect('/webexam/post');
    }

    return view('Posts/edit.php', ['post' => $post]);
    }



    public static function update() {
    $id = $_POST['id'] ?? null;
    $title = $_POST['title'] ?? '';
    $body = $_POST['body'] ?? '';

    $post = Post::find($id);
    if ($post && $post->user_id == $_SESSION['user']['id']) {
        $post->title = $title;
        $post->body = $body;
        $post->save();
    }

    return redirect('/webexam/post');
}

    public static function delete()
    {
        $id = $_GET['id'] ?? null;

    if ($id) {
        $post = Post::find($id);
        if ($post && $post->user_id == $_SESSION['user']['id']) {
            $post->delete();
        }
    }

    return redirect('/webexam/post');
    }



    public static function generateRelations()
{
    $posts = Post::all();

    foreach ($posts as $post) {
        // انتخاب 2 تا 3 پست دیگر به صورت تصادفی
        $relatedPosts = Post::where('id', '!=', $post->id)
                            ->inRandomOrder()
                            ->take(rand(2, 3))
                            ->get();

        foreach ($relatedPosts as $related) {
            // بررسی نکنه قبلاً این رابطه ثبت شده باشه
            $exists = RelatedPost::where(function ($query) use ($post, $related) {
                $query->where('post_1_id', $post->id)
                      ->where('post_2_id', $related->id);
            })->orWhere(function ($query) use ($post, $related) {
                $query->where('post_1_id', $related->id)
                      ->where('post_2_id', $post->id);
            })->exists();

            if (!$exists) {
                RelatedPost::create([
                    'post_1_id' => $post->id,
                    'post_2_id' => $related->id
                ]);
            }
        }
    }

    echo "روابط پست‌ها با موفقیت ایجاد شدند.";
}

public static function ranked()
{
    $posts = \App\Model\Post::all();

    $sortedPosts = $posts->sortByDesc(function ($post) {
        $view = \App\Model\PostView::where('post_id', $post->id)->first();
        return $view ? $view->views : 0;
    });

    // پاس دادن متغیرها به ویو
    view('Posts/ranked.php', [
        'posts' => $sortedPosts
    ]);
}


public static function rankedByEigen()
{

    $relatedPosts = Capsule::table('related_posts')->get();
    $posts = Post::all();

    $postIds = $posts->pluck('id')->values()->all();
    $n = count($postIds);
    $idIndexMap = array_flip($postIds);

    // ساخت ماتریس صفر اولیه
    $matrix = array_fill(0, $n, array_fill(0, $n, 0));

    // پر کردن ماتریس از روی رابطه‌ها
    foreach ($relatedPosts as $relation) {
        if (isset($idIndexMap[$relation->post_1_id]) && isset($idIndexMap[$relation->post_2_id])) {
            $i = $idIndexMap[$relation->post_1_id];
            $j = $idIndexMap[$relation->post_2_id];
            $matrix[$i][$j] = 1;
            $matrix[$j][$i] = 1;
        }
    }

    // الگوریتم power iteration برای بردار ویژه
    $rank = array_fill(0, $n, 1);
    for ($step = 0; $step < 20; $step++) {
        $newRank = array_fill(0, $n, 0);
        for ($i = 0; $i < $n; $i++) {
            for ($j = 0; $j < $n; $j++) {
                $newRank[$i] += $matrix[$i][$j] * $rank[$j];
            }
        }

        // نرمال‌سازی
        $norm = sqrt(array_sum(array_map(fn($x) => $x * $x, $newRank)));
        if ($norm != 0) {
            foreach ($newRank as &$value) {
                $value /= $norm;
            }
        }

        $rank = $newRank;
    }

    // اتصال رتبه به پست
    $rankedPosts = [];
    foreach ($postIds as $i => $postId) {
        $rankedPosts[] = [
            'post' => Post::find($postId),
            'score' => $rank[$i]
        ];
    }

    // مرتب‌سازی بر اساس score
    usort($rankedPosts, fn($a, $b) => $b['score'] <=> $a['score']);

    // ارسال به view
    view('Posts/ranked.php', ['rankedPosts' => $rankedPosts]);
}


    
}




