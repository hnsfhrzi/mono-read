import 'package:drawer_swipe/drawer_swipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mono_read/template/floatAppBar.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var drawerKey = GlobalKey<SwipeDrawerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0XFF3D405B),
        child: const Icon(
          Icons.question_mark_outlined,
          color: Color(0XFFF4F1DE),
        ),
        onPressed: () {},
      ),
      body: SwipeDrawer(
        radius: 20,
        key: drawerKey,
        bodyBackgroundPeekSize: 10,
        backgroundColor: const Color(0XFF3D405B),
        drawer: buildDrawer(),
        child: buildBody(),
      ),
    );
  }

  Column buildBody() {
    return Column(
      children: [
        floatAppBar(
          title: "Monoread",
          icon_1: const Icon(Icons.menu_rounded, color: Colors.white, size: 25,),
          icon_2: const Icon(Icons.more_vert_rounded, color: Colors.white, size: 25,),
          routePg1: opendrawer(),
          routePg2: () {},
        ),
        Positioned(
          left: 40, right: 40,
          top: 139,
          child: Column(
            children: [
              Container(width: 280, height: 157, color: Colors.yellowAccent,),
              const SizedBox(height: 42,),
              MaterialButton(
                child: Container(
                  height: 87,
                  width: 280,
                  decoration: BoxDecoration(
                    color: const Color(0XFF3D405B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: const Text("The Model Reader", style: TextStyle(letterSpacing: 2, color: Color(0XFFF4F1DE)),),
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                          ),
                          MaterialButton(
                            child: Container(
                              height: 35,
                              width: 167,
                              decoration: BoxDecoration(
                                color: const Color(0XFFF4F1DE),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(Icons.upload),
                                  Text("Import Your Model")
                                ],
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const SizedBox(width: 20,),
                      const Icon(Icons.wb_sunny_outlined, size: 40, color: Colors.white,),
                    ],
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 48,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MaterialButton(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFF4F1DE),
                          ),
                          child: Icon(CupertinoIcons.arrow_up_doc_fill, size: 60, color: Color(0XFF3D405B),),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(height: 10,),
                      Text("Added Model")
                    ],
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFF81B29A),
                          ),
                          child: Icon(CupertinoIcons.globe, size: 60, color: Color(0XFFF4F1DE),),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(height: 10,),
                      Text("Network Model")
                    ],
                  ),
                ],
              )
            ],
          )
        )
      ],
    );
  }

  Widget buildDrawer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ListTile(
          title: Text("Note Calender"),
        ),
        ListTile(
          title: Text("Model Reader"),
        ),
        ListTile(
          title: Text("Logout"),
        ),
      ],
    );
  }


  opendrawer() {
    if (drawerKey.currentState != null){
      if(drawerKey.currentState!.isOpened()) {
        drawerKey.currentState?.openDrawer();
      } else {
        drawerKey.currentState?.closeDrawer();
      }
    }
  }
}
