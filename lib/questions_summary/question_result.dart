import 'package:flutter/material.dart';
import 'package:super_quiz/questions_summary/question_identifier.dart';

class QuestionResult extends StatelessWidget {
  const QuestionResult({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              isCorrectAnswer: data["correct_answer"] == data["user_answer"],
              questionIndex: data["question_index"].toString()),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'].toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text(
                  data['user_answer'].toString(),
                  style:
                      const TextStyle(color: Colors.purpleAccent, fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  data['correct_answer'].toString(),
                  style: const TextStyle(color: Colors.blueAccent, fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
