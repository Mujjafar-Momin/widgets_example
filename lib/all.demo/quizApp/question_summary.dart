import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({Key? key, required this.summaryData})
      : super(key: key);
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ((data['question-index'] as int) + 1).toString(),
              style: const TextStyle(color: Colors.white),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['question'] as String,style: const TextStyle(color: Colors.white),
                    ),
                    Text(data['correct-answer'] as String,style: const TextStyle(color: Colors.white),
                    ),
                    Text(data['user-answer'] as String,style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
