import 'package:flutter/material.dart';

class QuizHome extends StatelessWidget {
  const QuizHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.deepPurpleAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/quiz-logo.png",
                width: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Learn Flutter the Fun way!",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.transparent),
                ),
                child: const Text("Start Quiz"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
