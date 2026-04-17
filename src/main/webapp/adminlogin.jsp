<!DOCTYPE html>
<html>
<head><title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100..900;1,100..900&family=Space+Grotesk:wght@300..700&display=swap" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center" style="height: 100vh;">

<nav class="navbar navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <span class="navbar-brand" style="font-family: Space Grotesk;">Smart City - Admin</span>
        <a href="index.jsp" class="btn btn-light btn-sm">
            Home
        </a>
    </div>
    
</nav>

<div class="container mt-5 pt-5">
    <div class="card mx-auto shadow" style="width: 400px;">
        <div class="card-body">

            <h3 class="text-center mb-4">Admin Login</h3>

            <form action="adminlogin" method="post">
                <input class="form-control mb-3" type="text" name="username" placeholder="Username" required>
                <input class="form-control mb-3" type="password" name="password" placeholder="Password" required>

                <button class="btn btn-dark w-100">Login</button>
            </form>

        </div>
    </div>

    <p class="text-center mt-3 text-muted">Admin Access Only</p>
</div>

</body>
</html>