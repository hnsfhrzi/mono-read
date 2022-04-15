import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mono_read/homepage/homePage.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset(
            "assets/images/calendar.png",
            scale: 6,
          ),
          title: "Testing title Image 1",
          body: "This is body text",
          footer: const Text("This is footer text")),
      PageViewModel(
          image: Image.asset(
            "assets/images/calendar.png",
            scale: 5,
          ),
          title: "Testing title Image 2",
          body: "This is body text",
          footer: const Text("This is footer text")),
      PageViewModel(
          image: Image.asset(
            "assets/images/calendar.png",
            scale: 5,
          ),
          title: "Testing title Image 3",
          body: "This is body text",
          footer: const Text("This is footer text")),
    ];
  }

  void introEnd(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const homePage()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          showSkipButton: true,
          showNextButton: true,
          done: const Text("Done"),
          onDone: () => introEnd(context),
          pages: getPages(),
          skip: const Icon(Icons.arrow_forward),
          next: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
