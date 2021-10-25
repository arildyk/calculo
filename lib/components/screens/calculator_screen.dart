import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  final String operationText;
  final String resultsText;

  const CalculatorScreen({
    Key? key,
    required this.operationText,
    required this.resultsText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Flexible(
      child: Container(
        height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.40,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    operationText,
                    style: new TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  resultsText,
                  style: new TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
