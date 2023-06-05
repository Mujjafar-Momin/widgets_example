import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/quizApp/data/data.dart';
import 'package:stream_demo_project/all.demo/quizApp/question_summary.dart';
import 'package:stream_demo_project/all.demo/quizApp/quiz_home.dart';
import 'package:stream_demo_project/all.demo/quizApp/start_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.chosenAnswer}) : super(key: key);
  final List<String> chosenAnswer;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].question,
        'correct-answer': questions[i].answers[0],
        'user-answer': chosenAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['user-answer'] == data['correct-answer'];
    }).length;

    return SizedBox(
      height: double.infinity,
      child: Container(
        height: 300,
        margin: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You have answered $numCorrectQuestion out of $numTotalQuestion answers correctly !",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 30),
              QuestionSummary(summaryData: summaryData),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) => const QuizHome(),
                      ));
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.refresh_rounded),
                label: const Text("Reset Quiz"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
