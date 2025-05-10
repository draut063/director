package com.appointment.schedule;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Simple hardcoded check
        if ("admin".equals(username) && "admin123".equals(password)) {
            response.sendRedirect("DashBoard.html"); // Redirect to a dashboard or success page
        	
        }
        else if ("user".equals(username) && "user123".equals(password)) { 
            response.sendRedirect("Otp.jsp"); // Redirect for regular user login
        } 
        else {
            response.sendRedirect("index.html?error=" + java.net.URLEncoder.encode("Invalid credentials", "UTF-8"));
        }
        
    }
}
