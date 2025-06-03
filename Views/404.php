<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>404 Not Found</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f8f9fa;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }
    main {
      flex: 1;
      background: linear-gradient(135deg, #f8d7da, #ffffff);
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .navbar {
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    .navbar-nav.center-nav {
      margin: 0 auto;
    }
    .error-container {
      text-align: center;
    }
    .error-code {
      font-size: 8rem;
      font-weight: bold;
      color: #dc3545;
    }
    .error-message {
      font-size: 1.5rem;
      color: #6c757d;
    }
    footer {
      background-color: #343a40;
      color: #fff;
    }
    footer a {
      color: #ccc;
      text-decoration: none;
    }
    footer a:hover {
      color: #fff;
    }
  </style>
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container">
      <a class="navbar-brand fw-bold" href="#">MyWebsite</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">

        <!-- Centered nav links -->
        <ul class="navbar-nav center-nav mb-2 mb-lg-0">
          <li class="nav-item"><a class="nav-link" href="/webexam/">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="/webexam/post">Posts</a></li>
          <li class="nav-item"><a class="nav-link" href="/webexam/dashboard">Dashboard</a></li>
        </ul>

        <!-- Login/Register Buttons -->
        <div class="d-flex">
          <a href="/webexam/login" class="btn btn-outline-primary me-2">Login</a>
          <a href="/webexam/register" class="btn btn-primary">Register</a>
        </div>

      </div>
    </div>
  </nav>

  <!-- Main Content -->
  <main>
    <div class="container error-container">
      <div class="error-code">404</div>
      <div class="error-message mb-4">Oops! The page you're looking for doesn't exist.</div>
      <a href="/webexam/" class="btn btn-danger px-4 py-2"><i class="fas fa-arrow-left me-2"></i>Back to Home</a>
    </div>
  </main>

  <!-- Footer -->
  <footer class="py-4">
    <div class="container text-center">
      <p class="mb-2">&copy; 2025 MyWebsite. All rights reserved.</p>
      <div>
        <a href="#"><i class="fab fa-facebook mx-2"></i></a>
        <a href="#"><i class="fab fa-twitter mx-2"></i></a>
        <a href="#"><i class="fab fa-instagram mx-2"></i></a>
        <a href="#"><i class="fab fa-linkedin mx-2"></i></a>
      </div>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
