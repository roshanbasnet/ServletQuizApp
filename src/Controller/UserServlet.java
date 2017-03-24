package Controller;

import Domain.User;
import Domain.questionQuiz;
import Service.QuestionService;
import Service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by sparkle on 8/29/16.
 */
public class UserServlet extends javax.servlet.http.HttpServlet {
    HttpSession session;
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException,NullPointerException {
        String page=request.getParameter("page");

        System.out.println(page);
        session=request.getSession(false);
        if(page.equalsIgnoreCase("login")){

            String username=request.getParameter("username");
            String password=request.getParameter("password");
            User user = new UserService().getUser(username,password);

            if(user!=null){
                request.setAttribute("message","Login Success!");
                session.setAttribute("user",user);
                User u = (User) session.getAttribute("user");
                System.out.println(u.getUsername());
                //request.setAttribute("user",user);
                RequestDispatcher rd= request.getRequestDispatcher("Users/home.jsp");
                rd.forward(request,response);
            }
            else{
                RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
                rd.forward(request,response);
            }
        }

        else if(page.equalsIgnoreCase("storeUser")){
            System.out.println("I am in storeuser");

            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String role=request.getParameter("role");
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setRole(role);
            int count = new UserService().addUser(user);
            if (count>0 ) {
                redirectToList(request,response);
            }else {
                System.out.println("Not inserted");
            }

        }
        else if(page.equalsIgnoreCase("editUser")){
            UserService userService=new UserService();

            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String role=request.getParameter("role");
            String sid=request.getParameter("id");
            int id=Integer.parseInt(sid);

            User user = new User();

            user.setId(id);
            user.setUsername(username);
            user.setPassword(password);
            user.setRole(role);

            user = userService.updateUser(user);

            request.setAttribute("user",user);
            redirectToList(request,response);
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException,NullPointerException {
        session=request.getSession(false);

        String page=request.getParameter("page");
        if(page.equalsIgnoreCase("delete") && ((User)session.getAttribute("user")).getRole().equalsIgnoreCase("admin")){

            UserService userService= new UserService();
            String sid=request.getParameter("id");
            int id=Integer.parseInt(sid);
            userService.deleteUser(id);
            redirectToList(request,response);
        }

        else if(page.equalsIgnoreCase("list")) {
            UserService userService = new UserService();
            List<User> userList = userService.getUserList();
            request.setAttribute("user", userList);
            RequestDispatcher rd = request.getRequestDispatcher("Users/List.jsp");
            rd.forward(request, response);
        }

        else if(page.equalsIgnoreCase("addUser") && ((User)session.getAttribute("user")).getRole().equalsIgnoreCase("admin")){
            RequestDispatcher rd= request.getRequestDispatcher("Users/AddUser.jsp");
            rd.forward(request,response);
        }
        else if(page.equalsIgnoreCase("update") && ((User)session.getAttribute("user")).getRole().equalsIgnoreCase("admin")){
            UserService userService = new UserService();
            User user = userService.getUser(request.getParameter("id"));
            request.setAttribute("user",user);
            RequestDispatcher rd= request.getRequestDispatcher("Users/updateUser.jsp");
            rd.forward(request,response);

        }

        else if(page.equalsIgnoreCase("listQuestion")) {
            QuestionService questionService = new QuestionService();
            List<questionQuiz> questionQuizList = questionService.getQuestionList();
            request.setAttribute("questionQuiz", questionQuizList);
            RequestDispatcher rd = request.getRequestDispatcher("Question/listQuestion.jsp");
            rd.forward(request, response);

        }

        else if(page.equalsIgnoreCase("logout")){
            User invalid = new User();
            invalid.setRole("invalid");
            session.setAttribute("user",invalid);
        //    session.removeAttribute("user");
            System.out.println("user attribute removed");
         //   session.invalidate();
            System.out.println("session invalidated");
            RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }
        else{
            RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }

    }

    private void redirectToList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService userService = new UserService();
        List<User> userList = userService.getUserList();
        request.setAttribute("user", userList);
        RequestDispatcher rd = request.getRequestDispatcher("Users/List.jsp");
        rd.forward(request, response);
    }
}
