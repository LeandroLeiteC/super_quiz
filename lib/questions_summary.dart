import 'package:flutter/material.dart';
import 'package:super_quiz/questions_summary/question_identifier.dart';
import 'package:super_quiz/questions_summary/question_result.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return QuestionResult(data: data);
          }).toList(),
        ),
      ),
    );
  }
}
