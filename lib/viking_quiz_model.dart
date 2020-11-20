import 'question.dart';

class VikingQuizModel {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'Java is the default programming language for creating Flutter apps.',
        false),
    Question(
        'Container holds the data for widgets that need to maintain state.',
        false),
    Question('Navigator is used to display different screens in a Flutter app.',
        true),
    Question('Widgets are nested.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].distractor;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
