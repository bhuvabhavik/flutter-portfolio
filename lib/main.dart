import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/views/home_page.dart';
import 'package:my_portfolio_webapp_1/views/main_dashboard.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MY PORTFOLIO APP",
      debugShowCheckedModeBanner: false,

      home: MainDashboard(),
    );
  }
}
