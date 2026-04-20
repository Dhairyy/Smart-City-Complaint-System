<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100..900;1,100..900&family=Space+Grotesk:wght@300..700&display=swap" rel="stylesheet">
</head>
<body class="bg-light">
<nav class="navbar bg-dark">
    <div class="container justify-content-center">
        <span class="navbar-brand text-white fw-bold fs-4" style="font-family: Space Grotesk;">
            Smart City Complaint System
        </span>
    </div>
</nav>

<div class="container mt-5 pt-5">

    <div class="card mx-auto shadow" style="width: 400px;">
        <div class="card-body">
           
            <h3 class="text-center mb-4" style="font-family:Roboto;">User Login</h3>

            <form action="userLogin" method="post">
                <input class="form-control mb-3" type="email" name="username" placeholder="Email" required>
                <input class="form-control mb-3" type="password" name="password" placeholder="Password" required>

                <button class="btn btn-dark shadow w-100" style="font-family:Roboto;">Login</button>
            </form>

            <div class="text-center mt-3">
                <a href="register.jsp">New User? Register</a><br>
                <a href="adminlogin.jsp">Admin Login</a>
            </div>

        </div>
    </div>
</div>

</body>
</html>