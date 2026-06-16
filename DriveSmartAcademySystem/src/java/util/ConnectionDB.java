package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionDB {
    private String URL = "jdbc:mysql://localhost:3306/drivesmart_db";
    private String USERNAME = "root";
    private String PASSWORD = "";
    
    Connection conn;
    
    public ConnectionDB(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    
    public Connection getConnection(){
        return conn;
    }
}
