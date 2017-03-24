package Controller;

import Domain.questionQuiz;
import Domain.Result;
import Service.AttemptQuiz;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by sparkle on 11/15/16.
 */
@WebServlet(name = "attemptQuizServlet")
public class attemptQuizServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page=request.getParameter("page");
        HttpSession session;
        session=request.getSession(false);
        if(page.equalsIgnoreCase("attemptQuiz")){
            AttemptQuiz attemptQuiz = new AttemptQuiz();
            attemptQuiz.truncateTable();
            List<questionQuiz> questionQuizList = attemptQuiz.getQuestionList();
            session.setAttribute("questionQuiz", questionQuizList);
            //request.setAttribute("index",2);
            RequestDispatcher rd = request.getRequestDispatcher("Question/attemptQuiz.jsp");
            rd.forward(request, response);


        }
        else if (page.equalsIgnoreCase("playTime")){
            AttemptQuiz attemptQuiz = new AttemptQuiz();
            int marks=0;

            List<questionQuiz>questionQuizList =(List<questionQuiz>) session.getAttribute("questionQuiz");
            request.setAttribute("questionQuiz",questionQuizList);
            int index=Integer.parseInt(request.getParameter("index"));
            request.setAttribute("index", index);
            String answer = request.getParameter("answer");
            //String correctAnswer=request.getParameter("correctAnswer");
            //System.out.println(answer);

            if(!answer.equalsIgnoreCase("null")){
                int id = questionQuizList.get(index-1).getId();
                String question=questionQuizList.get(index-1).getQuestion();

                String correctAns=questionQuizList.get(index-1).getCorrectAns();

                attemptQuiz.setValues(id, question, correctAns, answer);


                if(questionQuizList.size()<=index){
                    List<Result> questionDetail = attemptQuiz.getQuestion();
                    request.setAttribute("question", questionDetail);



                    for (int i = 0; i <questionDetail.size(); i++) {
                        correctAns = questionDetail.get(i).getCorrectAns();
                        answer = questionDetail.get(i).getAnswer();
//                        System.out.println(answer);
                        System.out.println(correctAns);
                        if(correctAns.equals(answer)){
                            //int m=1;
                            marks = marks + 1;


                        }
                    }
                    //System.out.println("marks = " + marks);
                    request.setAttribute("marks", marks);

                    request.setAttribute("totalQuestion", questionDetail.size());
                   //request.setAttribute("percentage",(float) (marks/questionDetail));
                    RequestDispatcher rd1 = request.getRequestDispatcher("Question/result.jsp");
                    rd1.forward(request, response);

                }


            }
            RequestDispatcher rd = request.getRequestDispatcher("Question/playTime.jsp");
            rd.forward(request, response);



        }
    }
}
