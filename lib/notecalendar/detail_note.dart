import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mono_read/template/floatAppBar.dart';

class DetailNote extends StatefulWidget {
  const DetailNote({Key? key}) : super(key: key);

  @override
  State<DetailNote> createState() => _DetailNoteState();
}

class _DetailNoteState extends State<DetailNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCF8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: Stack(
                  children: const [
                    floatAppBar(
                      title: "Lunch with Lubna",
                      icon_1: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      icon_2: Icon(
                        Icons.circle_rounded,
                        color: Color(0xFF81B29A),
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Time",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "WED, MAR 23",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "12:00 AM",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      "Notes",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      width: double.infinity,
                      height: 278,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFC4C4C4))),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Text(
                          "Appointment location Bon Ami",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        overlayOpacity: 0.0,
        animatedIcon: AnimatedIcons.play_pause,
        backgroundColor: const Color(0xFF3D405B),
        childrenButtonSize: const Size(60, 60),
        spaceBetweenChildren: 9,
        children: [
          SpeedDialChild(
            child: const Icon(
              Icons.edit_rounded,
              color: Color(0xFF3D405B),
            ),
            onTap: () {},
          ),
          SpeedDialChild(
            child: const Icon(
              Icons.delete_rounded,
              color: Color(0xFF3D405B),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
