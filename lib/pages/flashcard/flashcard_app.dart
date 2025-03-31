import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled/pages/base_screen.dart';

class FlashcardScreen extends StatefulWidget {
  const FlashcardScreen({super.key});

  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  List<Flashcard> flashcards = [
    Flashcard(question: 'What is the capital of France?', answer: 'Paris'),
    Flashcard(question: 'What is 2+2?', answer: '4'),
    Flashcard(question: 'What is the largest planet?', answer: 'Jupiter'),
  ];

  Random random = Random();
  int currentIndex = 0;
  bool showAnswer = false;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: 'Flashcard App',
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              flashcards[currentIndex].question,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            showAnswer
                ? Text(
              flashcards[currentIndex].answer,
              style: TextStyle(fontSize: 24),
            )
                : Container(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showAnswer = !showAnswer;
                });
              },
              child: Text(showAnswer ? 'Hide Answer' : 'Show Answer'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentIndex = random.nextInt(flashcards.length);
                  showAnswer = false;
                });
              },
              child: Text('Next Flashcard'),
            ),
          ],
        ),

    );
  }
}

class Flashcard {
  String question;
  String answer;

  Flashcard({required this.question, required this.answer});
}
