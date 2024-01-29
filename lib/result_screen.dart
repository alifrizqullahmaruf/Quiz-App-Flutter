import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAnswers});

  List<String> chosenAnswers;

  // memberikan ringkasan hasil data yang sudah di inputkan oleh user dengan kunci jawaban
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question-index':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      },);
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("You answered X out of Y questions correctly!!!"),
          const SizedBox(
            height: 30,
          ),
          QuestionSummary(getSummaryData()),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Restart Quiz"),
          )
        ],
      ),
    );
  }
}
