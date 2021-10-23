import 'package:calculo/components/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculo());
}

class Calculo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
