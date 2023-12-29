import 'package:flutter/material.dart';
import 'package:football_apps/config/app_route.dart';
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
      onGenerateRoute: MyRoutes.onGenerateRoute,
      initialRoute: MyRoutes.homeRoute,
    );
  }
}
