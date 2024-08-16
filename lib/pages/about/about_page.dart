import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yannble/widgets/colors.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "who am I.",
            style: TextStyle(color: lightOlive),
          ),
          backgroundColor: darkOlive,
          iconTheme: IconThemeData(color: lightOlive),
        ),
        backgroundColor: darkOlive,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Horizontal line
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 1,
                    color: lightOlive,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "A Software Engineer.",
                            style: GoogleFonts.ubuntu(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "My origins are in Côte d'Ivoire and Senegal, and I was born and bred in Abidjan. I reside, study, and work in Indianapolis, IN, USA.",
                            style: GoogleFonts.ubuntu(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "I use engineering principles to construct, design, develop, test, and maintain physical and digital programs.",
                            style: GoogleFonts.ubuntu(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 133.0),
                  child: Divider(
                    color: lightOlive,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "I enjoy designing, drawing, and painting.",
                            style: GoogleFonts.ubuntu(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(1)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "Anthroplogy, technology and science are subjects that have an insterest in me.",
                            style: GoogleFonts.ubuntu(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "Reading books, learning new materials, and programming code are activities that I find enjoyable.",
                            style: GoogleFonts.ubuntu(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 133.0),
                  child: Divider(
                    color: lightOlive,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: lightOlive,
                            ),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "Believer, perfectible, I'm a hopeful thinker.",
                            style: GoogleFonts.ubuntu(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(6.66)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "My skills include being a Web Designer, Flutter Developer, and a Full-Stack Engineer.",
                            style: GoogleFonts.ubuntu(color: lightOlive),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(6.66)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "I have experience in program design, database programming, and knowledge of software architecture.",
                            style: GoogleFonts.ubuntu(
                              color: lightOlive,
                            ),
                          ),
                        ),
                      ),
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
        ));
  }
}
