import 'package:flutter/material.dart';
import 'package:mono_read/template/floatAppBar.dart';
import 'package:flutter/cupertino.dart';

class NoteCalendar extends StatefulWidget {
  const NoteCalendar({Key? key}) : super(key: key);

  @override
  State<NoteCalendar> createState() => _NoteCalendarState();
}

class _NoteCalendarState extends State<NoteCalendar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFCF8),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: Stack(
                  children: const [
                    floatAppBar(
                      title: "Note Calendar",
                      icon_1: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      icon_2: Icon(
                        Icons.more_vert_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: Container(
                  height: 29,
                  child: const TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.black,
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                    indicator: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.green),
                      ),
                    ),
                    tabs: [Tab(text: 'All Notes'), Tab(text: 'On Calendar')],
                  ),
                ),
              ),
              const SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width / 1.125,
                  child: TabBarView(
                    children: [
                      Expanded(
                        //All Notes
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F1DE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              GridView.count(
                                crossAxisCount: 2,
                                children: [],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        //On Calendar
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F1DE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
