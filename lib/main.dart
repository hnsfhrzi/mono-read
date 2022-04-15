import 'package:flutter/material.dart';

import 'package:mono_read/homepage/homePage.dart';
import 'package:mono_read/notecalendar/add_note.dart';
import 'package:mono_read/notecalendar/detail_note.dart';
import 'package:mono_read/notecalendar/edit_note.dart';
import 'package:mono_read/startingscreen/onboarding.dart';
import 'package:mono_read/startingscreen/splash_screen.dart';

import 'package:mono_read/notecalendar/note_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MonoRead',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailNote(),
    );
  }
}
