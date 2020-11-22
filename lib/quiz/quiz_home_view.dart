import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';
import 'package:navigationapp/models/viking_quiz_model.dart';
import 'package:navigationapp/widgets/chat_bubbles.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizHomeView extends StatefulWidget {
  QuizHomeView({Key key, this.title}) : super(key: key);
  final VikingQuizModel model = VikingQuizModel();
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<QuizHomeView> {
  final VikingQuizModel model = VikingQuizModel();

  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = model.getCorrectAnswer();
    int totalCorrectCount = model.getTotalCorrectAnswers();

    setState(() {
      String passFail = 'failed';
      if (model.judgeQuiz()) {
        passFail = 'passed';
      }
      String quizResultsMessage =
          'You answered $totalCorrectCount questions correctly. You have $passFail the quiz!';

      if (model.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: quizResultsMessage,
        ).show();

        model.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          model.questionAnsweredCorrectly();

          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        model.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("current question number: ");
    print(model.getCurrentQuestionNumber());

    print("total correct answers: ");
    print(model.getTotalCorrectAnswers());

    print("question text: ");
    print(model.getQuestionText());
    var text = model.getQuestionText();
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xff548FF7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              color: Color(0xff252525),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 48, 20, 20),
                    child: Image(image: AssetImage("dash.png"), height: 120),
                  ),
                  pickActivityBubble(
                      ChatBubbleClipper2(type: BubbleType.receiverBubble),
                      context,
                      text),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: FlatButton(
                  color: Color(0xff548FF7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    //The user picked true.
                    checkAnswer(true);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: FlatButton(
                  color: Color(0xff548FF7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    //The user picked false.
                    checkAnswer(false);
                  },
                ),
              ),
            ),
            Row(
              children: scoreKeeper,
            )
          ],
        ),
      ),
    );
  }
}
