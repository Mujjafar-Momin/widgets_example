import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({Key? key, required this.summaryData})
      : super(key: key);
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                maxRadius: 16,
                backgroundColor:  data['user-answer'] == data['correct-answer']
                    ? Colors.purpleAccent
                    : Colors.redAccent,
                child: Text(
                  ((data['question-index'] as int) + 1).toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        data['correct-answer'] as String,
                        style: const TextStyle(color: Colors.green, fontSize: 16),
                      ),
                      Text(
                        data['user-answer'] as String,
                        style: TextStyle(
                            color: data['user-answer'] == data['correct-answer']
                                ? Colors.green
                                : Colors.red,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
