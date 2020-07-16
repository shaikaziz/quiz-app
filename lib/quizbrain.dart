import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
class QuizBrain{
  int _qno=0;

  List<Question> _questions=[Question('Russia is largest country ?', true),
    Question('Africa is the largest continent ?', true),
    Question('India\'s national animal is lion ?',false),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Samsung\'s S-series had battery heating issues', false),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question('Google was originally called \"Backrub\".', true),
  ];

  void nextquestion(){
    if(_qno<12){
      _qno++;
    }
  }

  bool isFinished() {
    if (_qno >= _questions.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }


  String gettext(){
    return _questions[_qno].questiontext;
  }


  bool getval(){
    return _questions[_qno].questionval;
  }
  void ended(){
    _qno=0;
  }
}