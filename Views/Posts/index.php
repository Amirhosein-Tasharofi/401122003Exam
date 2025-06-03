<?php
use App\Model\Post;
use App\Model\User;


$posts = Post::all();
?>

<?php include_once __DIR__ . '/../header.php'; ?>

<main style="flex: 1;">
  <div class="container py-5">

    <!-- Title and Add Button -->
    <div class="d-flex justify-content-between align-items-center mb-4">
      <h3 class="fw-bold mb-0">All Posts</h3>
      <a href="/webexam/post/create" class="btn btn-success shadow-sm">
        <i class="fas fa-plus me-1"></i> New Post
      </a>
    </div>

    <!-- Posts Table -->
    <div class="card shadow-sm rounded">
      <div class="card-body p-4">
        <?php if (count($posts) > 0): ?>
          <div class="table-responsive">
            <table class="table table-hover align-middle">
              <thead class="table-dark">
                <tr>
                  <th scope="col">Post Number</th>
                  <th scope="col">User name</th>
                  <th scope="col">Post Title</th>
                  <th scope="col" class="text-end">Actions</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach($posts as $index => $post): ?>
                  <?php
                    $user = \App\Model\User::find($post->user_id);
                    $username = $user ? $user->name : 'Unknown';
                  ?>
                  <tr>
                    <td><?= $index + 1 ?></td>
                    <td><?= htmlspecialchars($username) ?></td>
                    <td><?= htmlspecialchars($post->title) ?></td>
                    <td class="text-end">
                      <a href="/webexam/post/show?id=<?= $post->id ?>" class="btn btn-sm btn-outline-primary me-1">
                        <i class="fas fa-eye"></i>
                      </a>
                    </td>
                  </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
          </div>
        <?php else: ?>
          <div class="alert alert-info text-center mb-0">
            You have no posts yet. Click <strong>New Post</strong> to create one!
          </div>
        <?php endif; ?>
      </div>
    </div>

  </div>
</main>

<?php include_once __DIR__ . '/../footer.php'; ?>
