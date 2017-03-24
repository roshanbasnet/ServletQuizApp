package Controller;

import Domain.User;
import Domain.questionQuiz;
import Service.QuestionService;
import Service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.HttpSession;
import java.io.Reader;
import java.util.List;

/**
 * Created by sparkle on 9/18/16.
 */
@WebServlet(name = "questionQuizServlet")
public class questionQuizServlet extends HttpServlet {
    HttpSession session;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session=request.getSession(false);
        String page=request.getParameter("page");
        if(page.equalsIgnoreCase("storeQuestion")) {
            String question = request.getParameter("question");
            String option1 = request.getParameter("option1");
            String option2 = request.getParameter("option2");
            String option3 = request.getParameter("option3");
            String option4 = request.getParameter("option4");
            String correctAns = request.getParameter("correctAns");
            questionQuiz questionquiz = new questionQuiz();
            questionquiz.setQuestion(question);
            questionquiz.setOption1(option1);
            questionquiz.setOption2(option2);
            questionquiz.setOption3(option3);
            questionquiz.setOption4(option4);
            questionquiz.setCorrectAns(correctAns);
            int count = QuestionService.addQuestion(questionquiz);

            if (count > 0) {
                redirectToList(request,response);
            } else {
                System.out.println("Values not inserted in the database");
            }
        }
            else if(page.equalsIgnoreCase("editQuestion")){

            QuestionService questionService=new QuestionService();
            String question=request.getParameter("question");
            String option1=request.getParameter("option1");
            String option2=request.getParameter("option2");
            String option3=request.getParameter("option3");
            String option4=request.getParameter("option4");
            String correctAns=request.getParameter("correctAns");
            String sid=request.getParameter("id");
            int id=Integer.parseInt(sid);

            questionQuiz questionquiz = new questionQuiz();

            questionquiz.setId(id);
            questionquiz.setQuestion(question);
            questionquiz.setOption1(option1);
            questionquiz.setOption2(option2);
            questionquiz.setOption3(option3);
            questionquiz.setOption4(option4);
            questionquiz.setCorrectAns(correctAns);

            questionquiz = questionService.updateQuestion(questionquiz);

            redirectToList(request,response);


        }

            else{
                RequestDispatcher rd= request.getRequestDispatcher("Question/index.jsp");
                rd.forward(request,response);

            }

        }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page=request.getParameter("page");
        session=request.getSession(false);

        if(page.equalsIgnoreCase("addQuestion")&&((User) session.getAttribute("user")).getRole().equalsIgnoreCase("admin")){
            RequestDispatcher rd= request.getRequestDispatcher("Question/addQuestion.jsp");
            rd.forward(request,response);

        }
        else if(page.equalsIgnoreCase("update")&&((User) session.getAttribute("user")).getRole().equalsIgnoreCase("admin")){
            QuestionService  questionService= new QuestionService();
            questionQuiz questionquiz=questionService.getQuestionQuiz(request.getParameter("id"));
            request.setAttribute("questionQuiz",questionquiz);
            RequestDispatcher rd= request.getRequestDispatcher("Question/updateQuestion.jsp");
            rd.forward(request,response);

        }
        else if(page.equalsIgnoreCase("delete")&&((User) session.getAttribute("user")).getRole().equalsIgnoreCase("admin")){

            QuestionService questionService= new QuestionService();
            String sid=request.getParameter("id");
            int id=Integer.parseInt(sid);
            questionService.deleteQuestion(id);
            //RequestDispatcher rd= request.getRequestDispatcher("Question/listQuestion.jsp");
            //rd.forward(request,response);
            redirectToList(request,response);
        }

        else{
                RequestDispatcher rd= request.getRequestDispatcher("Question/index.jsp");
                rd.forward(request,response);
        }

    }
    private void redirectToList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuestionService questionService = new QuestionService();
        List<questionQuiz> questionQuizList = questionService.getQuestionList();
        request.setAttribute("questionQuiz", questionQuizList);
        RequestDispatcher rd = request.getRequestDispatcher("Question/listQuestion.jsp");
        rd.forward(request, response);
    }
}
