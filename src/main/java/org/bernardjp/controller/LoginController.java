package org.bernardjp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.bernardjp.data.UserDAO;
import org.bernardjp.model.User;

import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDAO userDAO = new UserDAO();
        User user = userDAO.getByUsername(username);

        if (user == null) {
            res.sendRedirect("error.jsp");
            return;
        }

        if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);

            res.sendRedirect("login.jsp");
        } else {
            res.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Error: Username and Password are incorrect. Try again.");
        }
    }
}
