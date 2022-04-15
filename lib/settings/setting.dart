import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mono_read/template/buttons.dart';
import 'package:mono_read/template/floatAppBar.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCF8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const floatAppBar(
            title: "Settings",
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
          SizedBox(
            height: 320,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "User",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500)),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.account_circle_outlined),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Text(
                          "Account",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.event_outlined),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Text(
                          "Calendar",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.folder_outlined),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Text(
                          "Files",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "General Setting",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500)),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.palette_outlined),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Text(
                          "Visual",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.notifications_outlined),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Text(
                          "Notification",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.help_outline),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Text(
                          "Help",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
