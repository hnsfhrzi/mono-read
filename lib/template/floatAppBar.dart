import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class floatAppBar extends StatelessWidget {
  const floatAppBar(
      {Key? key,
      required this.title,
      required this.icon_1,
      required this.icon_2})
      : super(key: key);
  final String title;
  final Widget icon_1;
  final Widget icon_2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 34, horizontal: 24),
        height: 86,
        decoration: BoxDecoration(
            color: Color(0XFF3D405B), borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: icon_1,
              onPressed: () {},
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, letterSpacing: 3),
            ),
            IconButton(
              icon: icon_2,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
