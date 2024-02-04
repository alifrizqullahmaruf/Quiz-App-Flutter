import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/question_screen.dart';
import 'package:second_app/result_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
  // penggunaan tanda "_" di depan class menunjukan bahwa class tersebut bersifat private
class _QuizState extends State<Quiz> {
  // List untuk menyimpan jawaban yang dipilih oleh pengguna
  List<String> selectedAnswers = [];
  
  // Variabel untuk melacak tampilan aktif (start, questions, atau results)
  var activeScreen = 'start-screen';

  // Fungsi untuk beralih ke tampilan pertanyaan
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  // Fungsi untuk memilih jawaban dan beralih ke tampilan hasil jika semua pertanyaan telah dijawab
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  // Metode build untuk menentukan tampilan sesuai dengan layar yang aktif
  @override
  Widget build(context) {
    // Widget awal adalah StartScreen dengan fungsi switchScreen
    Widget screenWidget = StartScreen(switchScreen);

    // Jika layar aktif adalah 'questions-screen', tampilkan QuestionScreen
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    // Jika layar aktif adalah 'results-screen', tampilkan ResultsScreen dengan jawaban yang dipilih
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    // Mengembalikan MaterialApp dengan Scaffold dan Container untuk menentukan latar belakang gradient
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget, // Menampilkan widget yang sesuai dengan layar aktif
        ),
      ),
    );
  }
}
