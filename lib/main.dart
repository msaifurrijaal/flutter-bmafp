import 'package:flutter/material.dart';
import 'package:football_apps/pages/home_page.dart';
import 'package:football_apps/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const HomePage(),
    );
  }
}
