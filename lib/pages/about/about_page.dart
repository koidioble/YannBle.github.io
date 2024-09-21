import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yannble/widgets/colors.dart';
import 'package:yannble/widgets/my_divider.dart';
import 'package:yannble/widgets/my_signature.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final _controllerPageView = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200], // Changed to a light grey
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: lightOlive,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          children: [
            Text(
              "who am I.",
              style: TextStyle(color: lightOlive),
            ),
            Icon(
              Icons.keyboard_arrow_up_outlined,
              color: lightOlive,
            ),
          ],
        ),
        iconTheme:
            IconThemeData(color: darkOlive), // Changed to match icon color
      ),
      backgroundColor: lightOlive,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              elevation: 9,
              child: Container(
                height: 699,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      lightOlive,
                      white,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.red[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Scaffold(
                    backgroundColor: transparentColor,
                    body: PageView(
                      scrollDirection: Axis.vertical,
                      controller: _controllerPageView,
                      onPageChanged: (index) {
                        ('Page ${index + 1}');
                      },
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () =>
                                          _controllerPageView.previousPage(
                                              duration:
                                                  const Duration(seconds: 1),
                                              curve: Curves.easeInOut),
                                      icon: Icon(
                                        Icons.keyboard_arrow_left_outlined,
                                        color: lightOlive,
                                      )),
                                  IconButton(
                                      onPressed: () =>
                                          _controllerPageView.nextPage(
                                              duration:
                                                  const Duration(seconds: 1),
                                              curve: Curves.easeInOut),
                                      icon: Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        color: lightOlive,
                                      )),
                                ],
                              ),
                              const MyDivider(),
                              Text(
                                "1 / 3",
                                style: GoogleFonts.ubuntuMono(
                                    color: lightGreen300),
                              ),
                              const SizedBox(height: 90),

                              // PADDING 1 / 3

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "Hello and Welcome! I'm Yann, a,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: lightGreen100,
                                      border: Border.all(color: lightOlive),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "passionate developer dedicated to",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "creating innovative and efficient mobile and web applications.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // PADDING 1 / 3 FIN

                              const SizedBox(height: 90),

                              // PADDING 2 / 3

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "My origins are in Côte d'Ivoire and Senegal,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "and I born and bred in Abidjan. I reside,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "study, and work in Indianapolis, IN, US.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // PADDING 2 / 3 FIN
                              const SizedBox(height: 99),
                              // PADDING 3 / 3
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "I use engineering principles to ",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "construct, design, develop,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border:
                                            Border.all(color: transparentColor),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "test, and maintain programs.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 90),

                              Text(
                                "1 / 3",
                                style: GoogleFonts.ubuntuMono(
                                    color: lightGreen300),
                              ),
                              const MyDivider(),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () =>
                                          _controllerPageView.previousPage(
                                              duration:
                                                  const Duration(seconds: 1),
                                              curve: Curves.easeInOut),
                                      icon: Icon(
                                        Icons.keyboard_arrow_left_outlined,
                                        color: lightOlive,
                                      )),
                                  IconButton(
                                      onPressed: () =>
                                          _controllerPageView.nextPage(
                                              duration:
                                                  const Duration(seconds: 1),
                                              curve: Curves.easeInOut),
                                      icon: Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        color: lightOlive,
                                      )),
                                ],
                              ),
                              const MyDivider(),
                              Text(
                                "2 / 3",
                                style: GoogleFonts.ubuntuMono(
                                    color: lightGreen300),
                              ),
                              const SizedBox(height: 90),

                              // PADDING 1 / 3

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "I enjoy designing,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: lightGreen100,
                                      border: Border.all(color: lightOlive),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        " drawing,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        " and painting.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // PADDING 1 / 3 FIN

                              const SizedBox(height: 90),

                              // PADDING 2 / 3

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "Anthropology,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "Technology and Science are",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "subjects that have an interest in me.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // PADDING 2 / 3 FIN
                              const SizedBox(height: 99),
                              // PADDING 3 / 3
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "Reading books, learning new materials,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        " and programming codes are activities",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border:
                                            Border.all(color: transparentColor),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        " that I find enjoyable.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 90),
                              Text(
                                "2 / 3",
                                style: GoogleFonts.ubuntuMono(
                                    color: lightGreen300),
                              ),
                              const MyDivider(),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () =>
                                          _controllerPageView.previousPage(
                                              duration:
                                                  const Duration(seconds: 1),
                                              curve: Curves.easeInOut),
                                      icon: Icon(
                                        Icons.keyboard_arrow_left_outlined,
                                        color: lightOlive,
                                      )),
                                  IconButton(
                                      onPressed: () =>
                                          _controllerPageView.nextPage(
                                              duration:
                                                  const Duration(seconds: 1),
                                              curve: Curves.easeInOut),
                                      icon: Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        color: lightOlive,
                                      )),
                                ],
                              ),
                              const MyDivider(),
                              Text(
                                "3 / 3",
                                style: GoogleFonts.ubuntuMono(
                                    color: lightGreen300),
                              ),
                              const SizedBox(height: 90),

                              // PADDING 1 / 3

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "Believer,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: lightGreen100,
                                      border: Border.all(color: lightOlive),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "Perfectible,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "I'm a hopeful thinker.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // PADDING 1 / 3 FIN

                              const SizedBox(height: 90),

                              // PADDING 2 / 3

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "My skills include being a Web Designer,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "Flutter Developer,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "and a Full-Stack Engineer.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // PADDING 2 / 3 FIN
                              const SizedBox(height: 99),
                              // PADDING 3 / 3
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "I have experience in program design,",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border: Border.all(color: lightOlive),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "database programming, and",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 3, bottom: 3),
                                child: InkWell(
                                  hoverColor: lightGreen100,
                                  splashColor: lightGreen100,
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: lightGreen100,
                                        border:
                                            Border.all(color: transparentColor),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        "knowledge of software architecture.",
                                        style: TextStyle(
                                          color: lightOlive,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 90),
                              Text(
                                "3 / 3",
                                style: GoogleFonts.ubuntuMono(
                                    color: lightGreen300),
                              ),
                              const MyDivider(),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // body: Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.transparent),
                    //   ),
                    //   width: Responsive.isMobile(context)
                    //       ? Responsive.widthOfScreen(context) * 0.9
                    //       : Responsive.widthOfScreen(context) * 0.8,
                    //   child: SingleChildScrollView(
                    //     scrollDirection: Axis.vertical,
                    //     child: Center(
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //         children: <Widget>[
                    //           Padding(
                    //             padding: const EdgeInsets.only(top: 9),
                    //             child: InkWell(
                    //               hoverColor: lightOlive,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: Colors.transparent,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: Colors.transparent,
                    //                       border: Border.all(color: lightOlive),
                    //                       borderRadius: BorderRadius.circular(9)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9.99),
                    //                     child: Text(
                    //                       "Welcome! I am a passionate full stack engineer dedicated to creating innovative and efficient mobile and web applications.",
                    //                       style: GoogleFonts.ubuntu(
                    //                           color: darkOlive,
                    //                           fontWeight: FontWeight.w600),
                    //                       textAlign: TextAlign.center,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(3),
                    //             child: InkWell(
                    //               hoverColor: lightOlive,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: transparentColor,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: transparentColor,
                    //                       border: Border.all(color: lightOlive),
                    //                       borderRadius: BorderRadius.circular(9)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9.99),
                    //                     child: Text(
                    //                       "My origins are in Côte d'Ivoire and Senegal, and I was born and bred in Abidjan. I reside, study, and work in Indianapolis, IN, USA.",
                    //                       textAlign: TextAlign.center,
                    //                       style: GoogleFonts.ubuntu(
                    //                           color: darkOlive,
                    //                           fontWeight: FontWeight.w600),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(3),
                    //             child: InkWell(
                    //               hoverColor: lightOlive,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: transparentColor,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: transparentColor,
                    //                       border: Border.all(color: lightOlive),
                    //                       borderRadius: BorderRadius.circular(8)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9.99),
                    //                     child: Text(
                    //                       "I use engineering principles to construct, design, develop, test, and maintain physical and digital programs.",
                    //                       textAlign: TextAlign.center,
                    //                       style: GoogleFonts.ubuntu(
                    //                           color: darkOlive,
                    //                           fontWeight: FontWeight.w600),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.symmetric(horizontal: 133),
                    //             child: Divider(
                    //               color: lightOlive,
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(3),
                    //             child: InkWell(
                    //               hoverColor: lightOlive,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: transparentColor,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: transparentColor,
                    //                       border: Border.all(color: lightOlive),
                    //                       borderRadius: BorderRadius.circular(9)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9.99),
                    //                     child: Text(
                    //                       "I enjoy designing, drawing, and painting.",
                    //                       textAlign: TextAlign.center,
                    //                       style: GoogleFonts.ubuntu(
                    //                         color: darkOlive,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(3),
                    //             child: InkWell(
                    //               hoverColor: canaryYellow,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: transparentColor,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: transparentColor,
                    //                       border: Border.all(color: lightOlive),
                    //                       borderRadius: BorderRadius.circular(9)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9),
                    //                     child: Text(
                    //                       "Anthroplogy, technology and science are subjects that have an insterest in me.",
                    //                       style: GoogleFonts.ubuntu(
                    //                         color: darkOlive,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                       textAlign: TextAlign.center,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(3),
                    //             child: InkWell(
                    //               hoverColor: canaryYellow,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: transparentColor,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: transparentColor,
                    //                       border: Border.all(color: lightOlive),
                    //                       borderRadius: BorderRadius.circular(9)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9.99),
                    //                     child: Text(
                    //                       "Reading books, learning new materials, and programming code are activities that I find enjoyable.",
                    //                       style: GoogleFonts.ubuntu(
                    //                         color: darkOlive,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                       textAlign: TextAlign.center,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding:
                    //                 const EdgeInsets.symmetric(horizontal: 133.0),
                    //             child: Divider(
                    //               color: lightOlive,
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(3),
                    //             child: InkWell(
                    //               hoverColor: canaryYellow,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: transparentColor,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: transparentColor,
                    //                       border: Border.all(
                    //                         color: lightOlive,
                    //                       ),
                    //                       borderRadius: BorderRadius.circular(9)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9.99),
                    //                     child: Text(
                    //                       "Believer, perfectible, I'm a hopeful thinker.",
                    //                       style: GoogleFonts.ubuntu(
                    //                         color: darkOlive,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                       textAlign: TextAlign.center,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(3),
                    //             child: InkWell(
                    //               hoverColor: lightOlive,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: transparentColor,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: transparentColor,
                    //                       border: Border.all(color: lightOlive),
                    //                       borderRadius: BorderRadius.circular(9)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9.99),
                    //                     child: Text(
                    //                       "My skills include being a Web Designer, Flutter Developer, and a Full-Stack Engineer.",
                    //                       style: GoogleFonts.ubuntu(
                    //                         color: darkOlive,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                       textAlign: TextAlign.center,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(3),
                    //             child: InkWell(
                    //               hoverColor: lightOlive,
                    //               onTap: () {},
                    //               child: Card(
                    //                 elevation: 0.0,
                    //                 shape: const RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.all(Radius.circular(9))),
                    //                 borderOnForeground: true,
                    //                 color: transparentColor,
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                       color: transparentColor,
                    //                       border: Border.all(color: lightOlive),
                    //                       borderRadius: BorderRadius.circular(9)),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(9.99),
                    //                     child: Text(
                    //                       "I have experience in program design, database programming, and knowledge of software architecture.",
                    //                       style: GoogleFonts.ubuntu(
                    //                           color: darkOlive,
                    //                           fontWeight: FontWeight.w600),
                    //                       textAlign: TextAlign.center,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(16.0),
                    //             child: Divider(
                    //               color: midOlive,
                    //             ),
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(16.0),
                    //             child: Text(
                    //               "© Koidio Y. Blé - 2024",
                    //               style: GoogleFonts.ubuntu(color: midOlive),
                    //             ),
                    //           ),
                    //           const SizedBox(height: 9),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              ),
            ),
            const MySignature()
          ],
        ),
      ),
    );
  }
}
