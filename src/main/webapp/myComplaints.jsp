<%@ page import="java.sql.*" %>
<%@ page session="true" %>

<%
String user = (String) session.getAttribute("username");

if(user == null){
    response.sendRedirect("index.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Complaints</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <span class="navbar-brand">My Complaints</span>
        <a href="logout.jsp" class="btn btn-danger">Logout</a>
    </div>
</nav>

<div class="container mt-4">

<table class="table table-bordered table-striped">
<tr>
    <th>ID</th>
    <th>Complaint</th>
    <th>Status</th>
</tr>

<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/smart_city",
    "root",
    ""
);

PreparedStatement ps = con.prepareStatement(
    "SELECT * FROM complaints WHERE username=?"
);

ps.setString(1, user);
ResultSet rs = ps.executeQuery();

while(rs.next()){
%>

<tr>
<td><%= rs.getInt("id") %></td>
<td><%= rs.getString("complaint") %></td>
<td>
    <% if("Resolved".equals(rs.getString("status"))){ %>
        <span class="badge bg-success">Resolved</span>
    <% } else { %>
        <span class="badge bg-warning text-dark">Pending</span>
    <% } %>
</td>
</tr>

<%
}
con.close();
%>

</table>

<a href="home.jsp" class="btn btn-primary">Back</a>

</div>

</body>
</html>