import 'package:calculo/components/calculator_button.dart';
import 'package:calculo/config/palette.dart';
import 'package:flutter/material.dart';

class CalculatorGrid extends StatelessWidget {
  final Function addToScreen;
  final Function plusMinus;
  final Function allClear;
  final Function backSpace;
  final Function percentage;
  final Function evaluate;

  const CalculatorGrid({
    Key? key,
    required this.addToScreen,
    required this.plusMinus,
    required this.allClear,
    required this.backSpace,
    required this.percentage,
    required this.evaluate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.60,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryVariant,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    text: "AC",
                    function: allClear,
                    color: operationsButtonColor,
                  ),
                  CalculatorButton(
                    text: "±",
                    function: plusMinus,
                    color: operationsButtonColor,
                  ),
                  CalculatorButton(
                    text: "%",
                    function: percentage,
                    color: operationsButtonColor,
                  ),
                  CalculatorButton(
                    text: "÷",
                    function: addToScreen,
                    color: operandButtonColor,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    text: "7",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "8",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "9",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "×",
                    function: addToScreen,
                    color: operandButtonColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    text: "4",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "5",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "6",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "−",
                    function: addToScreen,
                    color: operandButtonColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    text: "1",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "2",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "3",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "+",
                    function: addToScreen,
                    color: operandButtonColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    text: "⌫",
                    function: backSpace,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "0",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: ".",
                    function: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "=",
                    function: evaluate,
                    color: operandButtonColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
