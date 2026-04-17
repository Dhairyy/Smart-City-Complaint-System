package controller;

import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;


@WebServlet("/userLogin")
public class UserLoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    String username = request.getParameter("username");
	    String password = request.getParameter("password");

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");

	        Connection con = DriverManager.getConnection(
	            "jdbc:mysql://localhost:3306/smart_city",
	            "root",
	            ""
	        );

	        String query = "SELECT * FROM users WHERE username=? AND password=?";
	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setString(1, username);
	        ps.setString(2, password);

	        ResultSet rs = ps.executeQuery();

	        if(rs.next()) {
	            HttpSession session = request.getSession();
	            session.setAttribute("username", username);

	            response.sendRedirect("home.jsp");
	        } else {
	            response.getWriter().println("Invalid Login");
	        }

	        con.close(); // ✅ correct place

	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}
    }