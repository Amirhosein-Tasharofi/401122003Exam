<!DOCTYPE html>
<html lang="en" style="height:100%;">
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #f9d6e8, #ffffff);
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
    <h3 class="text-center mb-4">Register</h3>
    <form method="POST" action="/webexam/register" autocomplete="off">
      <div class="mb-3">
        <label for="name" class="form-label">name</label>
        <input type="text" name="name" class="form-control" id="name" required>
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input type="email" name="email" class="form-control" id="email" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" name="password" class="form-control" id="password" required>
      </div>
      <div class="mb-4">
        <label for="confirm" class="form-label">Confirm Password</label>
        <input type="password" name="confirm_password" class="form-control" id="confirm" required>
      </div>
      <div class="d-grid">
        <button type="submit" class="btn btn-success">Register</button>
      </div>
      <div class="mt-3 text-center">
        Already have an account? <a href="/webexam/login">Login</a>
      </div>
    </form>
  </div>
</body>
</html>
