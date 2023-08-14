import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';
import 'package:plant_app/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: AppColors.background,
      home: Scaffold(body: WelcomePage()),
    );
  }
}
