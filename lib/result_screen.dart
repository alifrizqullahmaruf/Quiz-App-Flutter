import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAnswers});


  List<String> chosenAnswers;


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
          const Text("List answered questions"),
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
