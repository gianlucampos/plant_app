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
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: 22, color: Colors.black87, fontWeight: FontWeight.w900),
          bodyLarge: TextStyle(fontSize: 18),
          labelLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          labelMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, background: AppColors.background),
      ),
      home: const Scaffold(body: WelcomePage()),
    );
  }
}
