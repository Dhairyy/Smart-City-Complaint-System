package controller;

import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

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
            String checkQuery = "SELECT * FROM users WHERE username=?";
            PreparedStatement checkPs = con.prepareStatement(checkQuery);
            checkPs.setString(1, username);

            ResultSet rs = checkPs.executeQuery();

            if(rs.next()) {
                // ❌ User already exists
                response.getWriter().println("User already exists! Please login.");
            } else {
                // ✅ Insert new user
                String query = "INSERT INTO users(username, password) VALUES (?, ?)";
                PreparedStatement ps = con.prepareStatement(query);

                ps.setString(1, username);
                ps.setString(2, password);

                ps.executeUpdate();

                response.sendRedirect("index.jsp");
            }

            con.close();
           
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}