import 'package:flutter/material.dart';
import 'package:second_app/quiz.dart';

void main() {
  runApp(
    const MyApp(),
  );
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const Quiz();
  }
}
