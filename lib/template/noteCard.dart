import 'package:flutter/material.dart';

class NotesCard extends StatefulWidget {
  const NotesCard({Key? key}) : super(key: key);

  @override
  State<NotesCard> createState() => _NotesCardState();
}

class _NotesCardState extends State<NotesCard> {
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
              "Lunch With Lubna",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18),
            Text(
              "Appoinment Location Bon Ami",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 41),
            Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF81B29A),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 6),
                Flexible(
                  child: Text(
                    "Wed 23 March 2022 12.00",
                    style: TextStyle(
                      color: Color(0xFF3D405B),
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
