package controller;

import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/submitComplaint")
public class ComplaintServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    // 🔐 Get logged-in user from session
	    HttpSession session = request.getSession();
	    String username = (String) session.getAttribute("username");

	    // ❗ If user not logged in
	    if(username == null){
	        response.sendRedirect("index.jsp");
	        return;
	    }

	    String complaint = request.getParameter("complaint");

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");

	        Connection con = DriverManager.getConnection(
	                "jdbc:mysql://localhost:3306/smart_city",
	                "root",
	                ""
	        );

	        String query = "INSERT INTO complaints(username, complaint) VALUES (?, ?)";

	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setString(1, username);
	        ps.setString(2, complaint);

	        int rows = ps.executeUpdate();

	        if(rows > 0){
	            response.sendRedirect("home.jsp"); // better UX
	        } else {
	            response.getWriter().println("Failed to save complaint");
	        }

	        con.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
}