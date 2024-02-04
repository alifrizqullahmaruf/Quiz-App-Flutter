import 'package:flutter/material.dart';

// Widget untuk tampilan awal quiz
class StartScreen extends StatelessWidget {
  // Konstruktor dengan parameter fungsi startQuiz
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz; // Fungsi untuk memulai kuis

  @override
  Widget build(BuildContext context) {
    // Memusatkan kontennya
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Menampilkan logo quiz dengan ukuran dan warna tertentu
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 70), // Jarak vertikal
          // Menampilkan teks dengan gaya tertentu
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 30), // Jarak vertikal
          // Tombol bertekanan untuk memulai kuis
          OutlinedButton.icon(
            onPressed:
                startQuiz, // Mengaitkan fungsi startQuiz saat tombol ditekan
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white, // Warna teks tombol
            ),
            icon: const Icon(Icons.arrow_right_alt), // Ikon panah ke kanan
            label: const Text('Start Quiz'), // Teks pada tombol
          )
        ],
      ),
    );
  }
}
