import 'package:calculo/components/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

import 'calculator_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _opText = "3+2";
  String _resText = "5";

  void _addToScreen(String _text) {
    setState(() {
      _opText += _text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CalculatorScreen(operationText: _opText, resultsText: _resText),
            CalculatorGrid(addToScreen: _addToScreen),
          ],
        ),
      ),
    );
  }
}
