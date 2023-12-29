import 'package:flutter/material.dart';
import 'package:football_apps/models/football_club.dart';
import 'package:football_apps/pages/detail_page.dart';
import 'package:football_apps/pages/home_page.dart';

class MyRoutes {
  static const String homeRoute = '/';
  static const String detailRoute = '/detail';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case detailRoute:
        var fc = settings.arguments as FootballClub;
        return MaterialPageRoute(
          builder: (_) => DetailPage(fc: fc),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No Route'),
            ),
          ),
        );
    }
  }
}
