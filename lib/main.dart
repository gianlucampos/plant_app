import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';
import 'package:plant_app/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

const textThemeDefault = TextTheme(
  // headline1: TextStyle(fontSize: 96, fontWeight: FontWeight.w300),
  displayLarge:
      TextStyle(fontSize: 96, fontWeight: FontWeight.w300, wordSpacing: -1.5),
  displayMedium: TextStyle(fontSize: 60, fontWeight: FontWeight.w300),
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.green,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          elevation: 1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, background: AppColors.background),
      ),
      home: const Scaffold(body: WelcomePage()),
    );
  }
}
