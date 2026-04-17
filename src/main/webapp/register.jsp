<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100..900;1,100..900&family=Space+Grotesk:wght@300..700&display=swap" rel="stylesheet">
</head>

<body class="bg-light">

<nav class="navbar bg-dark shadow">
    <div class="container justify-content-center">
        <span class="navbar-brand text-white fw-bold" style="font-family:Space Grotesk;">
            Smart City Complaint System
        </span>
    </div>
</nav>

<div class="container mt-5">
    <div class="card mx-auto shadow p-4" style="width: 400px;">

        <h3 class="text-center mb-4">User Register</h3>

        <form action="register" method="post">
            <input class="form-control mb-3" type="email" name="username" placeholder="Email" required>
            <input class="form-control mb-3" type="password" name="password" placeholder="Password" required>

            <button class="btn btn-dark w-100">Register</button>
        </form>

        <div class="text-center mt-3">
            <a href="index.jsp">Already have an account? Login</a>
        </div>

    </div>
</div>

</body>
</html>