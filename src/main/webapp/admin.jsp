<%@ page import="java.sql.*" %>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

String admin = (String) session.getAttribute("admin");

if(admin == null){
    response.sendRedirect("adminlogin.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Panel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <span class="navbar-brand">Admin Panel</span>
        <a href="adminlogout.jsp" class="btn btn-danger">Logout</a>
    </div>
</nav>

<h2>Admin Dashboard</h2>

<p>Total Complaints: 
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/smart_city",
    "root",
    ""
);
Statement countSt = con.createStatement();
ResultSet countRs = countSt.executeQuery("SELECT COUNT(*) FROM complaints");
if(countRs.next()){
    out.print(countRs.getInt(1));
  }
}catch(Exception e){
	out.println(e);
}

%>
</p>

<h2>All Complaints</h2>

<table class="table table-bordered table-striped">
<tr>
    <th>ID</th>
    <th>UserName</th>
    <th>Complaint</th>
    <th>Status</th>
    <th>Action</th>
    <th>Delete</th>
</tr>

<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/smart_city",
        "root",
        ""
    );

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM complaints");

    while(rs.next()) {
%>

<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("username") %></td>
    <td><%= rs.getString("complaint") %></td>
    <td><%= rs.getString("status") %></td>

<td>
    
<a class="btn btn-success btn-sm" href="updateStatus?id=<%= rs.getInt("id") %>">Resolve</a>
</td>
<td>
    <a class="btn btn-danger btn-sm" href="deleteComplaint?id=<%= rs.getInt("id") %>"
onclick="return confirm('Delete this complaint?');">Delete</a>
</td>
</tr>

<%
    }

    con.close();

} catch(Exception e) {
    out.println(e);
}
%>

</table>

</body>
</html>