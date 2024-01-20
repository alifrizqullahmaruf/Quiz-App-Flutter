import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/models/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionsIndex = 0;

  void answerButtons() {  
    setState(() {
      currentQuestionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
  var currentQuestion = questions[currentQuestionsIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffleAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerButtons);
            }),
          ],
        ),
      ),
    );
  }
}
