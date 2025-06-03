<?php
use App\Model\Post;
use App\Model\User;
use App\Model\PostView;

$id = $_GET['id'] ?? null;
$post = Post::find($id);
$user = $post ? User::find($post->user_id) : null;

$views = 0;
if ($post) {
    $postView = PostView::where('post_id', $post->id)->first();
    $views = $postView ? $postView->views : 0;
}

include_once __DIR__ . '/../header.php';
?>

<main style="flex: 1;">
  <div class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-8 col-lg-7">
        <div class="card shadow-sm border-0 rounded-4">
          <div class="card-header bg-primary text-white rounded-top-4">
            <h5 class="mb-0"><i class="fas fa-file-alt me-2"></i> Post Details</h5>
          </div>
          <div class="card-body">

            <?php if ($post && $user): ?>
              <div class="mb-4 pb-3 border-bottom">
                <h6 class="text-muted">Posted By</h6>
                <p class="fs-5 mb-0"><i class="fas fa-user-circle me-2 text-secondary"></i><?= htmlspecialchars($user->name) ?></p>
              </div>

              <div class="mb-4 pb-3 border-bottom">
                <h6 class="text-muted">Post Title</h6>
                <p class="fs-4 text-dark"><?= htmlspecialchars($post->title) ?></p>
              </div>

              <div class="mb-4">
                <h6 class="text-muted">Post Content</h6>
                <div class="border rounded-3 p-3 bg-light">
                  <p class="mb-0 fs-5"><?= nl2br(htmlspecialchars($post->body)) ?></p>
                </div>
              </div>

              <div class="mb-4">
                <h6 class="text-muted">Post Views</h6>
                <p class="fs-5"><?= htmlspecialchars($views) ?></p>
              </div>
            <?php else: ?>
              <p class="text-danger">Post not found.</p>
            <?php endif; ?>

          </div>
        </div>

        <div class="text-center mt-4">
          <a href="/webexam/dashboard" class="btn btn-outline-secondary px-4">
            <i class="fas fa-arrow-left me-1"></i> Back to Posts
          </a>
        </div>
      </div>
    </div>
  </div>
</main>

<?php include_once __DIR__ . '/../footer.php'; ?>
