package org.bernardjp.data;

import io.github.cdimascio.dotenv.Dotenv;
import io.github.cdimascio.dotenv.DotenvException;

import java.sql.*;

public class DBConnection {
    private static final String ENV_PATH = "E:/Desarrollo de Software/Proyectos/invcnity-java-cac-project/invcnity-java";

    public static Connection getInstance() throws SQLException, ClassNotFoundException, DotenvException {
        Dotenv dotenv = Dotenv.configure().directory(ENV_PATH).load();

        String JDBC_URL = dotenv.get("JDBC_URL");
        String JDBC_USER = dotenv.get("JDBC_USER");
        String JDBC_PASS = dotenv.get("JDBC_PASS");

        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
    }

    public static void close(ResultSet rs) throws SQLException {
        rs.close();
    }
}
