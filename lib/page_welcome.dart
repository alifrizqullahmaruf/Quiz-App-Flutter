import 'package:flutter/material.dart';

class WelcomeAssets extends StatelessWidget {
  const WelcomeAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          child: Image.asset(
            'assets/quiz-logo.png',
            height: 300,
          ),
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(height: 20,),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ))
      ],
    );
  }
}
