import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(fitPro());

class fitPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1B1F33), // Optional: Remove app bar shadow
          titleTextStyle: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0,
          ),
        ),
        scaffoldBackgroundColor:
            Color(0xFF0A0E21), // Background color for the scaffold
      ),
      home: InputPage(),
    );
  }
}
