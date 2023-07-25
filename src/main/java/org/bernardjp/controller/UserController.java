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

@WebServlet("/users")
public class UserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        switch (action) {
            case "delete":
                deleteUser(req, resp);
                break;
            default:
                editUser(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        switch (action) {
            case "update":
                updateUser(req, resp);
                break;
            case "insert":
                insertUser(req, resp);
                break;
            default:
                editUser(req, resp);
                break;
        }
    }

    private void editUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/pages/operations/editUser.jsp").forward(req, resp);
    }

    private void deleteUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idUser = Integer.parseInt(req.getParameter("idUser"));

        UserDAO userDAO = new UserDAO();
        int result = userDAO.delete(idUser);

        if (result == 1) {
            req.getSession().invalidate();
        }

        resp.sendRedirect("estates.jsp");
    }

    private void updateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("idUser"));
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String lastname = req.getParameter("lastname");

        User updatedUser = new User(username, password, name, lastname);
        updatedUser.setId(id);

        UserDAO userDAO = new UserDAO();
        int result = userDAO.update(updatedUser);

        if (result == 1) {
            HttpSession session = req.getSession();
            session.setAttribute("user", updatedUser);
        }

        resp.sendRedirect("estates.jsp");
    }

    private void insertUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Migrate the implamentation from SignUpController to UserController
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String lastname = req.getParameter("lastname");

        User newUser = new User(username, password, name, lastname);
        UserDAO userDAO = new UserDAO();
        userDAO.insert(newUser);

        resp.sendRedirect("estates.jsp");
    }
}
