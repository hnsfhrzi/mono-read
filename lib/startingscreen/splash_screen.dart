import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _noteController;
  bool noteAnimated = false;

  @override
  void initState() {
    super.initState();
    _noteController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _noteController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 3),
            height: screenHeight,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Lottie.asset("assets/json/splash_screen.json",
                controller: _noteController, onLoaded: (composition) {
              _noteController
                ..duration = composition.duration
                ..forward();
            }),
          )
        ],
      ),
    );
  }
}
