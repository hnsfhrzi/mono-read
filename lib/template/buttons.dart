import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Button Persegi
class SquareButton extends StatelessWidget {
  const SquareButton({
    Key? key,
    required this.text,
    required this.icon_1,
    required this.bgColor,
  }) : super(key: key);

  final String text;
  final int bgColor;
  final Widget icon_1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 90,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(
          height: 70,
          width: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: const Color(0XFF3D405B)),
            child: const Icon(Icons.event_note_outlined, size: 38),
            onPressed: () {},
          ),
        ),
        Text(
          "Note Calendar",
          style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12)),
        )
      ]),
    );
  }
}

// Button Persegi Panjang
class RectButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
