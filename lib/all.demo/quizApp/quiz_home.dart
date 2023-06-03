import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/quizApp/data/data.dart';
import 'package:stream_demo_project/all.demo/quizApp/question_screen.dart';
import 'package:stream_demo_project/all.demo/quizApp/result_screen.dart';
import 'package:stream_demo_project/all.demo/quizApp/start_screen.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({Key? key}) : super(key: key);

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  List<String> selectedAnswer=[];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length==questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget=StartScreen(switchScreen);

    if(activeScreen=='questions-screen'){
      screenWidget=QuestionScreen(onSelectAnswer: chooseAnswer);
    }
    if(activeScreen=='results-screen'){
      screenWidget=ResultScreen(chosenAnswer: selectedAnswer,);
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.deepPurpleAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: screenWidget,
      ),
    );
  }
}
