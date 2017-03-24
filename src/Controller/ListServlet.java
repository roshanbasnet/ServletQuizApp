package Controller;

import Domain.User;
import Service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by sparkle on 9/5/16.
 */
@WebServlet(name = "ListServlet")
public class ListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
    /*
    public void redirectToList(){
        UserService userService= new UserService();
        List<User> userList= userService.getUserList();
        request.setAttribute("user",userList);
        RequestDispatcher rd= request.getRequestDispatcher("Users/List.jsp");
        rd.forward(request,response);


    }
    */
}

