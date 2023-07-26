package org.bernardjp.data;

import org.bernardjp.model.Estate;
import static org.bernardjp.data.DBConnection.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EstateDAO implements GenericDAO<Estate> {
    private static final String SQL_SELECT_ALL = "SELECT * FROM estates";
    private static final String SQL_SELECT_BY_USER_ID = "SELECT * FROM estates WHERE user_id = ?";
    private static final String SQL_SELECT_BY_ID = "SELECT * FROM estates WHERE id = ?";
    private static final String SQL_INSERT = "INSERT INTO estates(name, publicationURL, locationURL, rooms, buildingSize, price, user_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
    private static final String SQL_UPDATE = "UPDATE estates SET name = ?, publicationURL = ?, locationURL = ?, rooms = ?, buildingSize = ?, price = ? WHERE id = ?";
    private static final String SQL_DELETE = "DELETE FROM estates WHERE id = ?";

    private Connection getConnection() throws SQLException, ClassNotFoundException {
        return getInstance();
    }

    @Override
    public List<Estate> findAll() {
        List<Estate> estatesList = new ArrayList<>();

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(SQL_SELECT_ALL)
        ) {
            while(rs.next()) {
                Estate estate = createEstate(rs);
                estatesList.add(estate);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }

        return estatesList;
    }

    public List<Estate> findAllByUserId(int user_id) {
        List<Estate> estatesList = new ArrayList<>();

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SQL_SELECT_BY_USER_ID)
        ) {
            stmt.setLong(1, user_id);
            ResultSet rs = stmt.executeQuery();

            while(rs.next()) {
                Estate estate = createEstate(rs);
                estatesList.add(estate);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }

        return estatesList;
    }

    @Override
    public Estate getByID(int id) {
        Estate estate = null;

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SQL_SELECT_BY_ID)
        ) {
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                estate = createEstate(rs);
            }

            close(rs);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }

        return estate;
    }

    @Override
    public int insert(Estate estate) {
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SQL_INSERT)
        ) {
            stmt.setString(1, estate.getName());
            stmt.setString(2, estate.getPublicationURL());
            stmt.setString(3, estate.getLocationURL());
            stmt.setInt(4, estate.getRooms());
            stmt.setInt(5, estate.getBuildingSize());
            stmt.setInt(6, estate.getPrice());
            stmt.setInt(7, estate.getUserId());

            return stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }
        return 0;
    }

    @Override
    public int update(Estate estate) {
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SQL_UPDATE)
        ) {
            stmt.setString(1, estate.getName());
            stmt.setString(2, estate.getPublicationURL());
            stmt.setString(3, estate.getLocationURL());
            stmt.setInt(4, estate.getRooms());
            stmt.setInt(5, estate.getBuildingSize());
            stmt.setInt(6, estate.getPrice());
            stmt.setInt(7, estate.getId());

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

    private Estate createEstate(ResultSet rs) throws SQLException {
        Estate estate = new Estate();

        estate.setId(rs.getInt("id"));
        estate.setName(rs.getString("name"));
        estate.setPublicationURL(rs.getString("publicationURL"));
        estate.setLocationURL(rs.getString("locationURL"));
        estate.setRooms(rs.getInt("rooms"));
        estate.setBuildingSize(rs.getInt("buildingSize"));
        estate.setPrice(rs.getInt("price"));

        return estate;
    }
}
