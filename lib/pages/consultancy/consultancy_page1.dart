import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yannble/widgets/colors.dart';

class ConsultancyPage1 extends StatefulWidget {
  const ConsultancyPage1({super.key});

  @override
  State<ConsultancyPage1> createState() => _ConsultancyPage1State();
}

class _ConsultancyPage1State extends State<ConsultancyPage1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Web Designer',
              style: TextStyle(
                color: canaryYellow,
                fontSize: 33,
                decoration: TextDecoration.underline,
                decorationColor: canaryYellow,
              ),
            ),
            const SizedBox(height: 6.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card.filled(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3.0))),
                borderOnForeground: true,
                color: Colors.blueGrey[900],
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: canaryYellow),
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      " ✦ High-Quality Design ✦ ",
                      style: TextStyle(color: canaryYellow),
                    ),
                  ),
                ),
              ),
            ),
            Card.filled(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0))),
              borderOnForeground: true,
              color: lightOlive,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  "Create visually appealing and unique websites.",
                  style: TextStyle(color: canaryYellow),
                ),
              ),
            ),
            Card.filled(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0))),
              borderOnForeground: true,
              color: lightOlive,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  "Standing out from generic templates.",
                  style: TextStyle(color: canaryYellow),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card.filled(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0))),
            borderOnForeground: true,
            color: Colors.blueGrey[900],
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: canaryYellow),
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  " ✦ Scalability ✦ ",
                  style: TextStyle(color: canaryYellow),
                ),
              ),
            ),
          ),
        ),
        Card.filled(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.0))),
          borderOnForeground: true,
          color: lightOlive,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              "Help to accommodate new features or expansions.",
              style: TextStyle(color: canaryYellow),
            ),
          ),
        ),
        Card.filled(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.0))),
          borderOnForeground: true,
          color: lightOlive,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              "Ensuring it evolves with needs.",
              style: TextStyle(color: canaryYellow),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card.filled(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0))),
            borderOnForeground: true,
            color: Colors.blueGrey[900],
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: canaryYellow),
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  " ✦ Improved User Experience✦ ",
                  style: TextStyle(color: canaryYellow),
                ),
              ),
            ),
          ),
        ),
        Card.filled(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.0))),
          borderOnForeground: true,
          color: lightOlive,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              "Intuitive navigation, fast load, & mobile responsiveness.",
              style: TextStyle(color: canaryYellow),
            ),
          ),
        ),
        Card.filled(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.0))),
          borderOnForeground: true,
          color: lightOlive,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              "Higher user satisfaction and retention rates.",
              style: TextStyle(color: canaryYellow),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card.filled(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0))),
            borderOnForeground: true,
            color: Colors.blueGrey[900],
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: canaryYellow),
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  " ✦ Ongoing Support & Maintenance ✦ ",
                  style: TextStyle(color: canaryYellow),
                ),
              ),
            ),
          ),
        ),
        Card.filled(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.0))),
          borderOnForeground: true,
          color: lightOlive,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              "Support for updates, security, and troubleshooting.",
              style: TextStyle(color: canaryYellow),
            ),
          ),
        ),
        Card.filled(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.0))),
          borderOnForeground: true,
          color: lightOlive,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              "Keeping sites functional and up-to-date.",
              style: TextStyle(color: canaryYellow),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Divider(
            color: lightOlive,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "© Koidio Y. Blé - 2024",
            style: GoogleFonts.ubuntu(color: lightOlive),
          ),
        ),
        const SizedBox(height: 9),
      ],
    );
  }
}
