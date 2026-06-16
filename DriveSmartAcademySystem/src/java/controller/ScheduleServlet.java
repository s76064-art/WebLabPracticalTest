package controller;

import dao.SessionDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SessionBean;

//@WebServlet(name = "ScheduleServlet", urlPatterns = {"/ScheduleServlet"})
public class ScheduleServlet extends HttpServlet {

    private SessionDAO sessionDAO;

    public void init() {
        sessionDAO = new SessionDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<SessionBean> list = new ArrayList<>();
        try {
            list = sessionDAO.getAllSessions();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        request.setAttribute("sessionList", list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("schedule.jsp");
        requestDispatcher.forward(request, response);
    }

}
