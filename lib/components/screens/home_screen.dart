import 'package:calculo/components/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

import 'calculator_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _opText = "308 × 42";
  String _resText = "12,936";
  List<String> operands = ["÷", "×", "+", "−"];

  void _addToScreen(String _text) {
    setState(() {
      _opText = operands.contains(_text)
          ? _opText += " " + _text + " "
          : _opText += _text;
    });
  }

  // Add functions for equal sign, backspace, plusminus, modulo, and AC

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
