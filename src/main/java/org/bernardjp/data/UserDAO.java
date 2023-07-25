package org.bernardjp.data;

import org.bernardjp.model.User;
import static org.bernardjp.data.DBConnection.getInstance;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDAO implements GenericDAO<User> {
    private static final String SQL_SELECT_BY_USERNAME = "SELECT * FROM users WHERE username = ?";
    private static final String SQL_INSERT = "INSERT INTO users(username, password, name, lastname) VALUES (?, ?, ?, ?)";
    private static final String SQL_UPDATE = "UPDATE users SET username = ?, password = ?, name = ?, lastname = ? WHERE id = ?";
    private static final String SQL_DELETE = "DELETE FROM users WHERE id = ?";

    private Connection getConnection() throws SQLException, ClassNotFoundException {
        return getInstance();
    }

    public User getByUsername(String username) {
        User user = null;

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SQL_SELECT_BY_USERNAME)
        ) {
            stmt.setString(1, username);

            try(ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    user = createUser(rs);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }

        return user;
    }

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public User getByID(int id) {
        return null;
    }

    @Override
    public int insert(User user) {
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SQL_INSERT)
        ) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getName());
            stmt.setString(4, user.getLastname());

            return stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }
        return 0;
    }

    @Override
    public int update(User user) {
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SQL_UPDATE)
        ) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getName());
            stmt.setString(4, user.getLastname());
            stmt.setInt(5, user.getId());

            return stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }
        return 0;
    }

    @Override
    public int delete(int id) {
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SQL_DELETE)
        ) {
            stmt.setInt(1, id);
            return stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }
        return 0;
    }

    private User createUser(ResultSet rs) throws SQLException {
        User user = new User();

        user.setId(rs.getInt("id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setName(rs.getString("name"));
        user.setLastname(rs.getString("lastname"));

        return user;
    }
}
