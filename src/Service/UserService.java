package Service;

import Domain.User;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sparkle on 8/29/16.
 */
public class UserService {
    public User getUser(String name, String password) {
        User user = null;

        try {
            String query = "select * from user where username=? and password=?";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setString(1, name);
            pstm.setString(2, password);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;

    }

    public User getUser(String id) {
        User user = null;

        try {
            String query = "select * from user where id=? LIMIT 1";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setString(1, id);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;

    }

    public List<User> getUserList() {
        User user = null;
        List<User> ListOfUsers = new ArrayList<User>();

        try {
            String query = "select * from user";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
                ListOfUsers.add(user);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ListOfUsers;

    }

    public User updateUser(User user) {

        try {
            String query = "update user set username=?,password=?,role=? where id=?";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setString(1, user.getUsername());
            pstm.setString(2, user.getPassword());
            pstm.setString(3,user.getRole());
            pstm.setInt(4,user.getId());
            int affected = pstm.executeUpdate();
            if (affected == 1 ){
                return user;
            }else{
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

    public static int addUser(User user) {

        int count = 0;

        try {
            String query="insert into user(username,password,role) values (?, ?, ? )";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);

            // Parameters start with 1

            pstm.setString(1, user.getUsername());
            pstm.setString(2, user.getPassword());
            pstm.setString(3, user.getRole());
         //   pstm.executeUpdate();
            count = pstm.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }



    public void deleteUser(int Id) {
        User user = null;
        try {
            String query = "delete from user where Id=?";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setInt(1, Id);
            pstm.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
    }



}
