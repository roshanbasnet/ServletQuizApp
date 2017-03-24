package Service;

import Domain.Result;
import Domain.questionQuiz;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sparkle on 11/15/16.
 */
public class AttemptQuiz {
    public List<questionQuiz> getQuestionList() {
        //User user = null;
        questionQuiz questionQuiz=null;
        List<questionQuiz> ListOfQuestions = new ArrayList<questionQuiz>();

        try {
            String query = "select * from questionQuiz order by rand()";
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
                //questionQuiz.setCorrectAns(rs.getString("answer"));
                ListOfQuestions.add(questionQuiz);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ListOfQuestions;

    }

    public void setValues(int id, String question,String correctAns, String solution){
        questionQuiz questionQuiz=null;
        try {
            String query="insert into Result values (?,?,?,?)";
            PreparedStatement pstm= new DatabaseConnection().getPreparedStatement(query);
            pstm.setInt(1,id);
            pstm.setString(2,question);
            pstm.setString(3,correctAns);
            pstm.setString(4,solution);
            pstm.execute();

        }
        catch (SQLException e){
            e.printStackTrace();

        }
    }

    public void truncateTable(){
        questionQuiz questionQuiz=null;
        try{
            String query="truncate table Result";
            PreparedStatement pstm=new DatabaseConnection().getPreparedStatement(query);
            pstm.execute();

        }
        catch (SQLException e){
            e.printStackTrace();

        }
    }

    public List<Result> getQuestion() {
        //questionQuiz questionquiz = null;
        Result result=null;
        List<Result> ListOfResult = new ArrayList<Result>();

        try {
            String query = "select * from Result";
            PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                result = new Result();
                result.setId(rs.getInt("id"));
                result.setQuestion(rs.getString("question"));
                //result.setOption1(rs.getString("option1"));
                //result.setOption2(rs.getString("option2"));
                //result.setOption3(rs.getString("option3"));
                //result.setOption4(rs.getString("option4"));
                result.setCorrectAns(rs.getString("correctAns"));
                result.setAnswer(rs.getString("solution"));
                //System.out.println(result.getAnswer());
                ListOfResult.add(result);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ListOfResult;

    }


}
