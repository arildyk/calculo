import 'package:calculo/components/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';

import '../calculator_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

/* TO DO:
  Catch exceptions for expressions
  Add rich text
  Add iOS support
  Add app icon
*/

class _HomeScreenState extends State<HomeScreen> {
  String _opText = "";
  String _resText = "0";
  List<String> operands = ["÷", "×", "+", "−"];

  void _addToScreen(String _text) {
    setState(() {
      _opText = operands.contains(_text)
          ? _opText += " " + _text + " "
          : _opText += _text;
    });
  }

  void _allClear(String _text) {
    setState(() {
      _opText = "";
      _resText = "0";
    });
  }

  void _plusMinus(String _text) {
    setState(() {
      _opText += " × (-1)";
    });
  }

  void _backSpace(String _text) {
    setState(() {
      _opText = _opText != "" ? _opText.substring(0, _opText.length - 1) : "";
    });
  }

  void _percentage(String _text) {
    double res = double.parse(_resText);
    res *= 0.01;
    setState(() {
      _resText = res.toStringAsFixed(res.truncateToDouble() == res ? 0 : 3);
      _opText += " × 0.01";
    });
  }

  void _evaluate(String _text) {
    Parser p = Parser();

    String temp = _opText;
    temp = temp.replaceAll(operands[0], "/");
    temp = temp.replaceAll(operands[1], "*");
    temp = temp.replaceAll(operands[3], "-");

    Expression exp = p.parse(temp);

    double res = exp.evaluate(EvaluationType.REAL, ContextModel());

    RegExp rgx = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');

    setState(() {
      _resText = res == double.infinity
          ? "∞"
          : res == double.negativeInfinity
              ? "-∞"
              : res
                  .toStringAsFixed(res.truncateToDouble() == res ? 0 : 3)
                  .replaceAllMapped(rgx, (Match match) => "${match[1]},");
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle _statusBarLight = SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Theme.of(context).colorScheme.primary,
      systemNavigationBarColor: Theme.of(context).colorScheme.secondaryVariant,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor:
          Theme.of(context).colorScheme.secondaryVariant,
    );

    SystemUiOverlayStyle _statusBarDark = SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Theme.of(context).colorScheme.primary,
      systemNavigationBarColor: Theme.of(context).colorScheme.secondaryVariant,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor:
          Theme.of(context).colorScheme.secondaryVariant,
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Theme.of(context).brightness == Brightness.light
          ? _statusBarLight
          : _statusBarDark,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CalculatorScreen(operationText: _opText, resultsText: _resText),
              CalculatorGrid(
                addToScreen: _addToScreen,
                plusMinus: _plusMinus,
                allClear: _allClear,
                backSpace: _backSpace,
                percentage: _percentage,
                evaluate: _evaluate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
