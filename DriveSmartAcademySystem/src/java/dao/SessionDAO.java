package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.SessionBean;
import util.ConnectionDB;

public class SessionDAO {
    private Connection connection;
    
    public SessionDAO(){
        connection = new ConnectionDB().getConnection();
    }
    
    //Insert
    public boolean bookSession(SessionBean session) throws SQLException{
        String sql = "INSERT INTO training_sessions(student_name, branch_location, lesson_type, status) VALUE (?, ?, ?, ?)";
        
        try(PreparedStatement pstmt = connection.prepareStatement(sql)){
            pstmt.setString(1, session.getStudentName());
            pstmt.setString(2, session.getBranchLocation());
            pstmt.setString(3, session.getLessonType());
            pstmt.setString(4, session.getStatus());
            
            int rows = pstmt.executeUpdate();
            return rows > 0;
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        return false;
    }
    
    //Get all
    public List<SessionBean> getAllSessions() throws SQLException{
        String sql = "SELECT * FROM training_sessions";
        List<SessionBean> list = new ArrayList<>();
        try(PreparedStatement pstmt = connection.prepareStatement(sql); ResultSet result = pstmt.executeQuery()){
            while(result.next()){
                list.add(new SessionBean(
                        result.getInt("session_id"),
                        result.getString("student_name"),
                        result.getString("branch_location"),
                        result.getString("lesson_type"),
                        result.getString("status")
                ));
            }
        }
        
        return list;
    }
    
}
