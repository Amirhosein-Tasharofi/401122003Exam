<!DOCTYPE html>
<html lang="en" style="height:100%;">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #d0e8ff, #ffffff);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .form-container {
      background: white;
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
      width: 100%;
      max-width: 400px;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h3 class="text-center mb-4">Login</h3>
    <form method="POST" action="/webexam/login" autocomplete="off">
      <div class="mb-3">
        <label for="username" class="form-label" autocompelet="off">Username</label>
        <input type="text" name="username" class="form-control" id="username" required>
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input type="email" name="email" class="form-control" id="email" required>
      </div>
      <div class="mb-4">
        <label for="password" class="form-label">Password</label>
        <input type="password" name="password" class="form-control" id="password" required>
      </div>
      <div class="d-grid">
        <button type="submit" class="btn btn-primary">Log in</button>
      </div>
      <div class="mt-3 text-center">
        Don't have an account? <a href="/webexam/register">Register</a>
      </div>
    </form>
  </div>
</body>
</html>
