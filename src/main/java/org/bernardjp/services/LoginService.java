package org.bernardjp.services;

import jakarta.servlet.http.HttpServletRequest;
import org.bernardjp.model.User;

import java.util.Optional;

public interface LoginService {
    Optional<User> getUser(HttpServletRequest req);
}
