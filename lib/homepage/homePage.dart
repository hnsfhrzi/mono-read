import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mono_read/template/floatAppBar.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          floatAppBar(
            title: "Monoread",
            icon_1: Icon(Icons.menu_rounded, color: Colors.white, size: 25,),
            icon_2: Icon(Icons.more_vert_rounded, color: Colors.white, size: 25,),
          )
        ],
      ),
    );
  }
}
