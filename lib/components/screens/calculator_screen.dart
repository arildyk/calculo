import 'dart:math';

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
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      operationText,
                      style: new TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    resultsText,
                    style: new TextStyle(
                      fontSize: resultsText.length > 9
                          ? 60.0 / (log(resultsText.length) / log(5.5))
                          : 60.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
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
