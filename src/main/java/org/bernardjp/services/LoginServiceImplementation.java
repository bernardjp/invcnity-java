package org.bernardjp.services;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.bernardjp.model.User;

import java.util.Optional;

public class LoginServiceImplementation implements LoginService {
    @Override
    public Optional<User> getUser(HttpServletRequest req) {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user != null) {
            return Optional.of(user);
        }

        return Optional.empty();
    }
}
