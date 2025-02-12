import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(fitPro());

class fitPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:
            Color(0xFF0A0E21), // Background color for the scaffold
      ),
      home: InputPage(title: 'fitPro'),
    );
  }
}
