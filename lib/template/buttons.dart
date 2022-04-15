import 'package:flutter/material.dart';

// Button Persegi
class SquareButton extends StatelessWidget {

  const SquareButton(
      {Key? key,
        required this.description,
        required this.icon,
        required this.iconColor,
        required this.bgColor,
      })
      : super(key: key);

  final String description;
  final IconData icon;
  final int iconColor;
  final int bgColor;

  @override
  Widget build(BuildContext context) {
    return Container()
  }
}

// Button Persegi Panjang
class RectButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
