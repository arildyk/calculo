import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({
    Key? key,
    required this.number,
    required this.pressed,
    this.color,
  }) : super(key: key);

  final String number;
  final VoidCallback pressed;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
