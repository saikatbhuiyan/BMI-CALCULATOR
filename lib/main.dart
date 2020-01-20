import 'package:flutter/material.dart';
import 'input_page.dart';

const backgroundColor = Color(0xFF273c75);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D2136),
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: InputPage(),
    );
  }
}
