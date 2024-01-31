import 'package:flutter/material.dart';


class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAns = itemData['user_answer'] == itemData['correct_answer'];

    return const Placeholder();
  }
}
