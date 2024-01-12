import 'package:flutter/material.dart';

class QuiestionScreen extends StatefulWidget {
  const QuiestionScreen({super.key});

  @override
  State<QuiestionScreen> createState() => _QuiestionScreenState();
}

class _QuiestionScreenState extends State<QuiestionScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text('Welcome to Question Screen');
  }
}