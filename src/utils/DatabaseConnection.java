package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by ashmitakunwar on 8/29/16.
 */
public class DatabaseConnection {
    String url="jdbc:mysql://localhost:3306/student";
    String user="root";
    String password="1122";
    Connection connection= null;//yu null kina rakheko ani yesley k garcha?
    // answer: object initialize garcha..class ko tala ko dubai method ma use garna milcha tesaile. bhitra method ma initialize
    // gareko bhaye arko method le access garna milthena tesaile.
    public DatabaseConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url,user, password);
            System.out.println("Database connected");
        }
        catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }

    }
    public PreparedStatement getPreparedStatement(String query){
        PreparedStatement pstm=null;
        try {
            pstm=connection.prepareStatement(query);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return  pstm;
    }
}
