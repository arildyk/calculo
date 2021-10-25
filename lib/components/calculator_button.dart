import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {
  final String text;
  final Function addToScreen;
  final Color? color;

  CalculatorButton({
    Key? key,
    required this.text,
    required this.addToScreen,
    required this.color,
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color:
                Theme.of(context).colorScheme.primaryVariant.withOpacity(0.5),
            spreadRadius: 0.1,
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary),
          foregroundColor: MaterialStateProperty.all(widget.color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ),
        onPressed: () => widget.addToScreen(widget.text),
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
