import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:yannble/widgets/colors.dart';

class ConsultancyPage extends StatefulWidget {
  const ConsultancyPage({super.key});

  @override
  State<ConsultancyPage> createState() => _ConsultancyPageState();
}

class _ConsultancyPageState extends State<ConsultancyPage> {
  final _controllerPageView = PageController(initialPage: 0);

  @override
  void dispose() {
    _controllerPageView.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkOlive,
      appBar: AppBar(
        title: Text(
          "what I do.",
          style: TextStyle(color: lightOlive),
        ),
        backgroundColor: darkOlive,
        iconTheme: IconThemeData(color: lightOlive),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => _controllerPageView.previousPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut),
                    icon: const Icon(Icons.keyboard_arrow_left_outlined)),
                IconButton(
                    onPressed: () => _controllerPageView.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut),
                    icon: const Icon(Icons.keyboard_arrow_right_outlined)),
              ],
            )),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controllerPageView,
        onPageChanged: (index) {
          ('Page ${index + 1}');
        },
        children: [
          SingleChildScrollView(
            child: Container(
              color: darkOlive,
              child: Column(
                children: [
                  // Horizontal line
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 6.0),
                    child: Container(
                      height: 1,
                      color: lightOlive,
                    ),
                  ),
                  // Horizontal line //

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
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: midOlive,
              child: Column(
                children: [
                  // Horizontal line
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 6.0),
                    child: Container(
                      height: 1,
                      color: lightOlive,
                    ),
                  ),
                  // Horizontal line //,

                  Text(
                    'Flutter Developper',
                    style: TextStyle(
                      color: canaryYellow,
                      fontSize: 33,
                      decoration: TextDecoration.underline,
                      decorationColor: canaryYellow,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card.filled(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.blueGrey[100],
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: canaryYellow),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            " ✦ Cross-Platform Development ✦ ",
                            style: TextStyle(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: darkOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Create apps for multiple platforms using a single codebase.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: darkOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "(iOS, Android, web, and desktop)",
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
                      color: Colors.blueGrey[100],
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: canaryYellow),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            " ✦ Faster Development ✦ ",
                            style: TextStyle(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: darkOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Widget-based architecture facilitating rapid development.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: darkOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Hot reload allowing real-time changes.",
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
                      color: Colors.blueGrey[100],
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: canaryYellow),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            " ✦ Access to a Rich Ecosystem of Plugins ✦ ",
                            style: TextStyle(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: darkOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Variety of plugins for integration of various functionalities.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: darkOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Efficient & less prone to errors dev process.",
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
                      color: Colors.blueGrey[100],
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: canaryYellow),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            " ✦ Simplified Testing and Maintenance ✦ ",
                            style: TextStyle(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: darkOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Single codebase, testing & maintaining are straightforward.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: darkOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Focus on one version of the app, reducing complexity.",
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
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: lightOlive,
              child: Column(
                children: [
                  // Horizontal line
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 6.0),
                    child: Container(
                      height: 1,
                      color: canaryYellow,
                    ),
                  ),
                  // Horizontal line //

                  Text(
                    'Full-Stack Engineer',
                    style: TextStyle(
                      color: canaryYellow,
                      fontSize: 33,
                      decoration: TextDecoration.underline,
                      decorationColor: canaryYellow,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card.filled(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.blueGrey[300],
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: canaryYellow),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            " ✦ Cost Efficiency ✦ ",
                            style: TextStyle(color: midOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: midOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Can handle both front-end and back-end development.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: midOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Ability to streamline the development process. ",
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
                      color: Colors.blueGrey[300],
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: canaryYellow),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            " ✦ Holistic Understanding ✦ ",
                            style: TextStyle(color: midOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: midOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Comprehensive understanding of the entire dev process.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: midOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "From the user interface to server-side logic.",
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
                      color: Colors.blueGrey[300],
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: canaryYellow),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            " ✦ Improved Problem-Solving ✦ ",
                            style: TextStyle(color: midOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: midOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Find quick and effective solutions to problems.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: midOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Well-versed in various technologies and frameworks.",
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
                      color: Colors.blueGrey[300],
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: canaryYellow),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            " ✦ Greater Project Control ✦ ",
                            style: TextStyle(color: midOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: midOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Provide greater control over the project.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Card.filled(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    borderOnForeground: true,
                    color: midOlive,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        "Ensure consistency and quality throughout the dev process.",
                        style: TextStyle(color: canaryYellow),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Divider(
                      color: canaryYellow,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "© Koidio Y. Blé - 2024",
                      style: GoogleFonts.ubuntu(color: midOlive),
                    ),
                  ),
                  const SizedBox(height: 9),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
