<?php include_once __DIR__ . '/../header.php'; ?>

<main style="flex: 1;">
  <div class="container py-5">

    <!-- Title -->
    <div class="d-flex justify-content-between align-items-center mb-4">
      <h3 class="fw-bold mb-0">Ranked Posts (Eigenvector)</h3>
    </div>

    <!-- Table -->
    <div class="card shadow-sm rounded">
      <div class="card-body p-4">
        <?php if (count($rankedPosts) > 0): ?>
          <div class="table-responsive">
            <table class="table table-hover align-middle">
              <thead class="table-dark">
                <tr>
                  <th>#</th>
                  <th>Post Title</th>
                  <th>Score</th>
                  <th class="text-end">Actions</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($rankedPosts as $index => $item): ?>
                  <tr>
                    <td><?= $index + 1 ?></td>
                    <td><?= htmlspecialchars($item['post']->title) ?></td>
                    <td><?= number_format($item['score'], 4) ?></td>
                    <td class="text-end">
                      <a href="/webexam/post/show?id=<?= $item['post']->id ?>" class="btn btn-sm btn-outline-primary">
                        <i class="fas fa-eye"></i> Show
                      </a>
                    </td>
                  </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
          </div>
        <?php else: ?>
          <div class="alert alert-info text-center mb-0">
            No posts to display.
          </div>
        <?php endif; ?>
      </div>
    </div>

  </div>
</main>

<?php include_once __DIR__ . '/../footer.php'; ?>
