<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged Out</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light d-flex justify-content-center align-items-center" style="height:100vh;">

<%
session.invalidate();
%>

<div class="card p-4 shadow text-center">
    <h3 class="mb-3">Admin Logged Out</h3>
    <p class="text-muted">You have been successfully logged out.</p>

    <a href="adminlogin.jsp" class="btn btn-primary">Go to Admin login page.</a>
</div>

</body>
</html>