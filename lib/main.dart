import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/containerGradient/gradient_Container.dart';
import 'package:stream_demo_project/all.demo/diceRollerGame/dice_main_page.dart';
import 'package:stream_demo_project/all.demo/inheritedWidget/data.dart';
import 'package:stream_demo_project/all.demo/inheritedWidget/inherited_widget.dart';
import 'package:stream_demo_project/all.demo/keysDemo/KeyDemoWidget.dart';
import 'package:stream_demo_project/all.demo/quizApp/quiz_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple),
      home: const QuizHome(),
    );
  }
}
