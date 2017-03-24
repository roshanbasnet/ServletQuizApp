package Domain;

/**
 * Created by sparkle on 11/21/16.
 */
public class Result {
    int id;
    String question;
    String correctAns;
    String solution;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getCorrectAns() {
        return correctAns;
    }

    public void setCorrectAns(String correctAns) {
        this.correctAns = correctAns;
    }

    public String getAnswer() {
        return solution;
    }

    public void setAnswer(String answer) {
        this.solution = answer;
    }


}
