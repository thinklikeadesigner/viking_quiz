import 'question.dart';

class VikingQuizModel {
  final int _kQuizThreshold = 4;
  int _questionNumber = 0;
  int _totalCorrectAnswers = 0;

  List<Question> _questionBank = [
    Question(
        'The name of the first human being in Norse mythology is Ake.', false),
    Question(
        'Hel was the daughter of the Norse Mythological figure, Loki', true),
    Question('According to Norse mythology, Loki is a mother.', true),
    Question(
        'In Norse mythology, Nidhogg is the name of the serpent which eats the roots of the ash tree Yggdrasil',
        true),
    Question(
        'The Norse god Odin has two pet crows named "Huginn" and "Muninn".  Their names mean "Sleeping" and "Waking"',
        false),
    Question('The Norse God, Odin, has a horse named Sleipnir.', true),
    Question(
        'The immense structure referred to in Norse Mythology as the Yggdrasil is a tree.',
        true),
    Question('Jens is a god in Norse Mythology', false),
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

  int getTotalCorrectAnswers() {
    return _totalCorrectAnswers;
  }

  int getCurrentQuestionNumber() {
    return _questionNumber;
  }

  void questionAnsweredCorrectly() {
    _totalCorrectAnswers++;
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
    _totalCorrectAnswers = 0;
  }

  bool judgeQuiz() {
    return _totalCorrectAnswers > _kQuizThreshold;
  }
}
