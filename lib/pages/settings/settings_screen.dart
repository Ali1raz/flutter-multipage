import 'package:flutter/material.dart';
import 'package:untitled/pages/base_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Settings",
      child: Center(
        child: Text("setting"),
      ),
    );
  }
  
}