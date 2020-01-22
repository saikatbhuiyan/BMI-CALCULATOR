import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

const backgroundColor = Color(0xFF0c2461);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0c2461),
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: InputPage(),
//      initialRoute: '/',
//      routes: {
//        '/': (context) => InputPage(),
//        '/result': (context) => Result(),
//      },
    );
  }
}
