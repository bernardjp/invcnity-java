package org.bernardjp.data;

import java.sql.SQLException;
import java.util.List;

public interface GenericDAO<T> {
    List<T> findAll() throws SQLException;
    T getByID(int id) throws SQLException;
    int insert(T t) throws SQLException;
    int update(T t) throws SQLException;
    int delete(int id) throws SQLException;
}
