import 'package:calculo/components/calculator_button.dart';
import 'package:calculo/config/palette.dart';
import 'package:flutter/material.dart';

class CalculatorGrid extends StatelessWidget {
  final Function addToScreen;

  const CalculatorGrid({
    Key? key,
    required this.addToScreen,
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
                    addToScreen: addToScreen,
                    color: operationsButtonColor,
                  ),
                  CalculatorButton(
                    text: "±",
                    addToScreen: addToScreen,
                    color: operationsButtonColor,
                  ),
                  CalculatorButton(
                    text: "%",
                    addToScreen: addToScreen,
                    color: operationsButtonColor,
                  ),
                  CalculatorButton(
                    text: "÷",
                    addToScreen: addToScreen,
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
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "8",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "9",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "×",
                    addToScreen: addToScreen,
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
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "5",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "6",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "−",
                    addToScreen: addToScreen,
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
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "2",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "3",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "+",
                    addToScreen: addToScreen,
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
                    text: "⟲",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "0",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: ".",
                    addToScreen: addToScreen,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  CalculatorButton(
                    text: "=",
                    addToScreen: addToScreen,
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
