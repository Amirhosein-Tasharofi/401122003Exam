<?php
use App\Model\Post;


$username = $_SESSION['user']['username'] ?? 'Guest';
$email = $_SESSION['user']['email'] ?? 'guest@example.com';
$userId = $_SESSION['user']['id'] ?? 0;

// گرفتن پست‌های مربوط به همین کاربر
$posts = Post::where('user_id', $userId)->get();

include "header.php";
?>

<!-- Body -->
<main>
  <div class="container py-5">
    <div class="row">
      <!-- Profile Sidebar -->
      <div class="card shadow-sm p-3 mb-4 bg-white rounded" style="max-width: 300px;">
        <div class="card-body text-center">
          <div class="mb-3">
            <i class="fas fa-user-circle fa-5x text-primary"></i>
          </div>
          <h5 class="card-title mb-1"><?= htmlspecialchars($username) ?></h5>
          <p class="card-text text-muted small"><?= htmlspecialchars($email) ?></p>
          
          <a href="/webexam/logout" class="btn btn-outline-danger btn-sm mt-3">
            <i class="fas fa-sign-out-alt me-1"></i> Logout
          </a>
        </div>
      </div>

      <!-- Posts Table -->
      <div class="col-md-9">
        <div class="card shadow-sm">
          <div class="card-header bg-primary text-white">
            My Posts
          </div>
          <div class="card-body">
            <?php if (count($posts) > 0): ?>
              <table class="table table-striped align-middle">
                <thead>
                  <tr>
                    <th>Post Number</th>
                    <th>Post Title</th>
                    <th class="text-end">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($posts as $index => $post): ?>
                    <tr>
                      <td><?= $index + 1 ?></td>
                      <td><?= htmlspecialchars($post->title) ?></td>
                      <td class="text-end">
                        <a href="/webexam/post/show?id=<?= $post->id ?>" class="btn btn-sm btn-info">Show</a>
                        <a href="/webexam/post/edit?id=<?= $post->id ?>" class="btn btn-sm btn-warning">Edit</a>
                        <a class="btn btn-sm btn-danger" href="/webexam/post/delete?id=<?= $post->id ?>" onclick="return confirm('Are you sure you want to delete this post?');"><i class="fas fa-trash"></i> Delete</a>                      </td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            <?php else: ?>
              <p class="text-muted">No posts found.</p>
            <?php endif; ?>

            <a href="/webexam/post/create" class="btn btn-success mt-3">Add New Post</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>

<?php include "footer.php"; ?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
