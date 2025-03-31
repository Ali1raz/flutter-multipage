import 'package:flutter/material.dart';
import 'package:untitled/pages/base_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Home",
      child: Center(child: Text("home screen, nothing to show here")),
    );
  }
}
