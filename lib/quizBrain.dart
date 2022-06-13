import 'package:flutter/material.dart';

class Question {
  String quizText;
  bool quizAnswer;

  Question(this.quizText, this.quizAnswer);
}

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green1.', true),
    Question('A slug\'s blood is green2.', false),
    Question('A slug\'s blood is green3.', true),
    Question('A slug\'s blood is green4.', false),
    Question('A slug\'s blood is green5.', true),
    Question('A slug\'s blood is green6.', false),
    Question('A slug\'s blood is green7.', true),
  ];

  String getQuizText() {
    return _questions[_questionNumber].quizText;
  }

  bool getQuizAnswer() {
    return _questions[_questionNumber].quizAnswer;
  }

  int getQuestionNum() {
    return _questions.length;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  void nextResult(List<Widget> scoreKeeper, bool choice) {
    if (choice == getQuizAnswer()) {
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
  }
}

