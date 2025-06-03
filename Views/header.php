<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>My Website</title>
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
      background: linear-gradient(135deg, #e0f7fa, #ffffff); /* 👈 پوشش فاصله زیر بخش اصلی */
    }
    .navbar {
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    .navbar-nav.center-nav {
      margin: 0 auto;
    }
    .welcome-section {
      padding: 80px 20px;
      text-align: center;
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
          <li class="nav-item"><a class="nav-link" href="/webexam/post/rankingpost">Ranked Posts</a></li>
        </ul>

        <!-- Login/Register Buttons -->
        <div class="d-flex">
          <a href="/webexam/login" class="btn btn-outline-primary me-2">Login</a>
          <a href="/webexam/register" class="btn btn-primary">Register</a>
        </div>

      </div>
    </div>
  </nav>