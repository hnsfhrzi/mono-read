import 'package:flutter/material.dart';

class CalendarCard extends StatefulWidget {
  const CalendarCard({Key? key}) : super(key: key);

  @override
  State<CalendarCard> createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 19),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "1",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Text(
              "Senin",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: Color(0xFF81B29A),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
