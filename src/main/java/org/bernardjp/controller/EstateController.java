package org.bernardjp.controller;

import jakarta.servlet.http.HttpSession;
import org.bernardjp.data.EstateDAO;
import org.bernardjp.model.Estate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.bernardjp.model.User;
import org.bernardjp.services.LoginService;
import org.bernardjp.services.LoginServiceImplementation;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet("/estates")
public class EstateController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action != null) {
            switch (action) {
                case "edit":
                    editEstate(req, res);
                    break;
                case "delete":
                    deleteEstate(req, res);
                    break;
                default:
                    defaultAction(req, res);
                    break;
            }
        } else {
            defaultAction(req, res);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action != null) {
            switch (action) {
                case "insert":
                    insertEstate(req, res);
                    break;
                case "update":
                    updateEstate(req, res);
                    break;
                default:
                    defaultAction(req, res);
                    break;
            }
        } else {
            defaultAction(req, res);
        }
    }

    private void editEstate(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int idEstate = Integer.parseInt(req.getParameter("idEstate"));
        Estate estate = new EstateDAO().getByID(idEstate);

        req.setAttribute("estate", estate);
        req.getRequestDispatcher("/WEB-INF/pages/operations/editEstate.jsp").forward(req, res);
    }

    private void insertEstate(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Optional<User> user = new LoginServiceImplementation().getUser(req);

        String name = req.getParameter("name");
        String publicationURL = req.getParameter("publicationURL");
        String locationURL = req.getParameter("locationURL");
        int price = Integer.parseInt(req.getParameter("price"));
        int rooms = Integer.parseInt(req.getParameter("rooms"));
        int buildingSize = Integer.parseInt(req.getParameter("buildingSize"));
        int user_id = 0;

        if (user.isPresent()) {
            user_id = user.get().getId();
        }

        Estate newEstate = new Estate(name, publicationURL, locationURL, rooms, buildingSize, price, user_id);
        EstateDAO estateDAO = new EstateDAO();
        estateDAO.insert(newEstate);

        defaultAction(req, res);
    }

    private void updateEstate(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String name = req.getParameter("name");
        String publicationURL = req.getParameter("publicationURL");
        String locationURL = req.getParameter("locationURL");
        int price = Integer.parseInt(req.getParameter("price"));
        int rooms = Integer.parseInt(req.getParameter("rooms"));
        int buildingSize = Integer.parseInt(req.getParameter("buildingSize"));
        int idEstate = Integer.parseInt(req.getParameter("idEstate"));

        Estate updatedEstate = new Estate(name, publicationURL, locationURL, rooms, buildingSize, price);
        updatedEstate.setId(idEstate);

        EstateDAO estateDAO = new EstateDAO();
        estateDAO.update(updatedEstate);

        defaultAction(req, res);
    }

    private void deleteEstate(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int idEstate = Integer.parseInt(req.getParameter("idEstate"));

        EstateDAO estateDAO = new EstateDAO();
        estateDAO.delete(idEstate);

        defaultAction(req, res);
    }

    private void defaultAction(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        LoginService auth = new LoginServiceImplementation();
        Optional<User> user = auth.getUser(req);

        if (user.isPresent()) {
            List<Estate> estateList = new EstateDAO().findAllByUserId(user.get().getId());

            HttpSession session = req.getSession();
            session.setAttribute("estates", estateList);
            session.setAttribute("estatesCount", estateList.size());
            session.setAttribute("averagePrice", calculateAveragePrice(estateList));
            session.setAttribute("averageSize", calculateAverageSize(estateList));
            session.setAttribute("averageRooms", calculateAverageRooms(estateList));
        }

        res.sendRedirect("estates.jsp");
    }

    private double calculateAveragePrice(List<Estate> estates) {
        double total = 0;

        for(Estate estate: estates) {
            total += estate.getPrice();
        }

        return total / estates.size();
    }

    private double calculateAverageSize(List<Estate> estates) {
        double total = 0;

        for(Estate estate: estates) {
            total += estate.getBuildingSize();
        }

        double average = total / estates.size();
        average = Math.round(average * 100);
        average = average / 100;

        return average;
    }

    private int calculateAverageRooms(List<Estate> estates) {
        double total = 0;

        for(Estate estate: estates) {
            total += estate.getRooms();
        }

        return (int) Math.ceil(total / estates.size());
    }
}
