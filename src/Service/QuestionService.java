package Service;

import Domain.questionQuiz;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.SynchronousQueue;

/**
 * Created by sparkle on 9/18/16.
 */
public class QuestionService {
    public List<questionQuiz> getQuestionList() {
        //User user = null;
        questionQuiz questionQuiz=null;
        List<questionQuiz> ListOfQuestions = new ArrayList<questionQuiz>();

        try {
            String query = "select * from questionQuiz";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            ResultSet rs = pstm.executeQuery();
            System.out.println("Database connected ");
            while (rs.next()) {
                questionQuiz = new questionQuiz();
                questionQuiz.setId(rs.getInt("id"));
                questionQuiz.setQuestion(rs.getString("question"));
                questionQuiz.setOption1(rs.getString("option1"));
                questionQuiz.setOption2(rs.getString("option2"));
                questionQuiz.setOption3(rs.getString("option3"));
                questionQuiz.setOption4(rs.getString("option4"));
                questionQuiz.setCorrectAns(rs.getString("correctAns"));
                ListOfQuestions.add(questionQuiz);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ListOfQuestions;

    }

    public static int addQuestion(questionQuiz questionquiz){
        int count=0;

        try {
            String query="insert into questionQuiz(question, option1, option2, option3,option4, correctAns) values(?,?,?,?,?,?)";
            PreparedStatement pstm=new DatabaseConnection().getPreparedStatement(query);
            pstm.setString(1, questionquiz.getQuestion());
            pstm.setString(2, questionquiz.getOption1());
            pstm.setString(3, questionquiz.getOption2());
            pstm.setString(4, questionquiz.getOption3());
            pstm.setString(5, questionquiz.getOption4());
            pstm.setString(6, questionquiz.getCorrectAns());
            //   pstm.executeUpdate();
            count = pstm.executeUpdate();

        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return count;

    }

    public questionQuiz updateQuestion(questionQuiz questionquiz){
        try {
            String query="update questionQuiz set question=?, option1=?, option2=?, option3=?, option4=?,correctAns=? where id=?";
            PreparedStatement pstm= new DatabaseConnection().getPreparedStatement(query);
            pstm.setString(1,questionquiz.getQuestion());
            pstm.setString(2,questionquiz.getOption1());
            pstm.setString(3,questionquiz.getOption2());
            pstm.setString(4,questionquiz.getOption3());
            pstm.setString(5,questionquiz.getOption4());
            pstm.setString(6,questionquiz.getCorrectAns());
            pstm.setInt(7,questionquiz.getId());
            int status=pstm.executeUpdate();
            if(status>1){
                return questionquiz;
            }
            else {
                return null;
            }

        }
        catch (SQLException e){
            e.printStackTrace();
            return null;

        }
    }


    public questionQuiz getQuestionQuiz(String id) {
        questionQuiz questionquiz = null;

        try {
            String query = "select * from questionQuiz where id=? LIMIT 1";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setString(1, id);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                questionquiz = new questionQuiz();
                questionquiz.setId(rs.getInt("id"));
                questionquiz.setQuestion(rs.getString("question"));
                questionquiz.setOption1(rs.getString("option1"));
                questionquiz.setOption2(rs.getString("option2"));
                questionquiz.setOption3(rs.getString("option3"));
                questionquiz.setOption4(rs.getString("option4"));
                questionquiz.setCorrectAns(rs.getString("correctAns"));


            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return questionquiz;
    }
    public void deleteQuestion(int Id) {
        questionQuiz questionquiz= null;
        try {
            String query = "delete from questionQuiz where Id=?";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            pstm.setInt(1, Id);
            pstm.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
    }
}
