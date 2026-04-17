<%@ page session="true" %>
<%
String user = (String) session.getAttribute("username");
if(user == null){
    response.sendRedirect("index.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <span class="navbar-brand">Smart City</span>
        <a href="logout.jsp" class="btn btn-danger">Logout</a>
    </div>
</nav>

<div class="container mt-5">

    <h3>Welcome, <%= user %></h3>

    <div class="card p-4 shadow mt-3">
        <h4>Submit Complaint</h4>

        <form action="submitComplaint" method="post">
            <input class="form-control mb-3" type="text" name="complaint" placeholder="Enter complaint" required>
            <button class="btn btn-success">Submit</button>
        </form>
    </div>

    <br>
    <a href="myComplaints.jsp" class="btn btn-primary">My Complaints</a>

</div>

</body>
</html>