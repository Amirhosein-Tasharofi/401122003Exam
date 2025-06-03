<?php include_once __DIR__ . '/../header.php'; ?>

<main style="flex: 1;">
  <div class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-8 col-lg-6">
        <div class="card shadow-sm">
          <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Create New Post</h4>
          </div>
          <div class="card-body">
            <form action="/webexam/post/create" method="POST">
              <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" name="title" id="title" class="form-control" placeholder="Enter post title" required>
              </div>
              <div class="mb-3">
                <label for="body" class="form-label">Content</label>
                <textarea name="body" id="body" class="form-control" rows="5" placeholder="Write your post here..." required></textarea>
              </div>
              <div class="d-grid">
                <button type="submit" class="btn btn-success">
                  <i class="fas fa-save me-1"></i> Save Post
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="text-center mt-3">
          <a href="/webexam/dashboard" class="btn btn-outline-secondary">
            <i class="fas fa-arrow-left"></i> Back to Posts
          </a>
        </div>
      </div>
    </div>
  </div>
</main>

<?php include_once __DIR__ . '/../footer.php'; ?>
