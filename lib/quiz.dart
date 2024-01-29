import 'package:flutter/material.dart';
import 'package:second_app/question_screen.dart';
import 'package:second_app/result_screen.dart';
import 'package:second_app/start_screen.dart';
import 'package:second_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // buat variabel berisi item jawaban yang di click selectedAnswers
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // buat fungsi masukin answe ke list variabel selectedAnswers
  void choseAnswer(String answer) {
    selectedAnswers.add(answer);

    // membuat logic for page tampilan sehingga jetika tampilan sudah sama dengan index maka akan pindah ke page rasult
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: choseAnswer,
      );
    }
    // ini merubah page ke page result 
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.deepPurple.shade300,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
