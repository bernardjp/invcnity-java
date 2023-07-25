package org.bernardjp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.bernardjp.model.User;
import org.bernardjp.services.LoginService;
import org.bernardjp.services.LoginServiceImplementation;

import java.io.IOException;
import java.util.Optional;

@WebServlet("/logout")
public class LogoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LoginService auth = new LoginServiceImplementation();
        Optional<User> user = auth.getUser(req);

        if (user.isPresent()) {
            HttpSession session = req.getSession();
            session.invalidate();
        }
        resp.sendRedirect("estates.jsp");
    }
}
