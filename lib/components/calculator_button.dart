import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {
  final String text;
  final Function addToScreen;

  CalculatorButton({
    Key? key,
    required this.text,
    required this.addToScreen,
  }) : super(key: key);

  @override
  _CalculatorButtonState createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      width: mediaQuery.size.width * 0.18,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary),
          foregroundColor: MaterialStateProperty.all(
              Theme.of(context).textTheme.bodyText1!.color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        onPressed: () => widget.addToScreen(widget.text),
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
