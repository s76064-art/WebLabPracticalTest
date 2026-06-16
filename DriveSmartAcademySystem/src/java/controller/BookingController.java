
package controller;

import dao.SessionDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SessionBean;

public class BookingController extends HttpServlet {
    private SessionDAO sessionDAO;
    
    public void init(){
        sessionDAO = new SessionDAO();
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Get data from client
        String studentName = request.getParameter("studentName");
        String branchLocation = request.getParameter("branchLocation");
        String lessonType = request.getParameter("lessonType");
        
        SessionBean newSession = new SessionBean(0, studentName, branchLocation, lessonType, "Booked"); // 0 is a placeholder
        boolean isSuccess = false;
        try {
            isSuccess = sessionDAO.bookSession(newSession);
        } catch (SQLException ex) {
            Logger.getLogger(BookingController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        System.out.println("Is success update: "+isSuccess);
        
        response.sendRedirect(request.getContextPath()+"/ScheduleServlet");
    }


}
