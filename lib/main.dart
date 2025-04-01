import 'package:flutter/material.dart';
import 'package:untitled/pages/flashcard/flashcard_app.dart';

import 'package:untitled/pages/home_screen.dart';
import 'package:untitled/pages/settings/settings_screen.dart';
import 'package:untitled/pages/ticket/ticket_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/flashcard': (context) => FlashcardScreen(),
        '/settings': (context) => SettingsScreen(),
        '/ticket': (context) => TicketApp(),
      },
    );
  }
}
