package Domain;

/**
 * Created by sparkle on 9/18/16.
 */
public class questionQuiz {
    int id;
    String question;
    String option1;
    String option2;
    String option3;
    String option4;
    String correctAns;

    public void setQuestion(String question) {
        this.question = question;
    }

    public void setOption1(String option1) {
        this.option1 = option1;
    }

    public void setOption2(String option2) {
        this.option2 = option2;
    }

    public void setOption3(String option3) {
        this.option3 = option3;
    }

    public void setOption4(String option4) {
        this.option4 = option4;
    }

    public void setCorrectAns(String correctAns) {
        this.correctAns = correctAns;
    }


    public int getId() {
        return id;
    }

    public String getQuestion() {
        return question;
    }

    public String getOption1() {
        return option1;
    }

    public String getOption2() {
        return option2;
    }

    public String getOption3() {
        return option3;
    }

    public String getOption4() {
        return option4;
    }

    public String getCorrectAns() {
        return correctAns;
    }


    public void setId(int id) {
        this.id = id;
    }
}
