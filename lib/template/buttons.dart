import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Button Persegi
class SquareButton extends StatelessWidget {
  const SquareButton({
    Key? key,
    required this.text,
    required this.icon,
    this.iconColor = 0XFFFFFFFF,
    required this.bgColor,
    required this.destination,
  }) : super(key: key);

  final String text;
  final int bgColor;
  final int iconColor;
  final IconData icon;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      width: 90,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(
          height: 70,
          width: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(bgColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Icon(
              icon,
              size: 38,
              color: Color(iconColor),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => destination));
            },
          ),
        ),
        Text(
          text,
          style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12)),
        )
      ]),
    );
  }
}

// Button Persegi Panjang
class RectButton extends StatelessWidget {
  const RectButton({
    Key? key,
    required this.text,
    this.width = 150,
    this.height = 55,
    required this.bgColor,
    required this.textColor,
    required this.destination,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final int bgColor;
  final int textColor;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(bgColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          text,
          style: TextStyle(
            color: Color(textColor),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => destination));
        },
      ),
    );
  }
}
