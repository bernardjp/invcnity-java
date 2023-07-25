package org.bernardjp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.bernardjp.data.UserDAO;
import org.bernardjp.model.User;

import java.io.IOException;

@WebServlet("/sign-up")
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/pages/operations/signUpForm.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String lastname = req.getParameter("lastname");

        User newUser = new User(username, password, name, lastname);
        UserDAO userDAO = new UserDAO();
        userDAO.insert(newUser);

        res.sendRedirect("estates.jsp");
    }
}
