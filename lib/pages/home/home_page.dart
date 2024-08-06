import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yannble/pages/about/about_page.dart';
import 'package:yannble/pages/consultancy/consultancy_page.dart';
import 'package:yannble/pages/contact/contact_page.dart';
import 'package:yannble/widgets/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkOlive,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 99),
              Padding(
                padding: const EdgeInsets.all(9.99),
                child: SizedBox(
                  height: 199.99,
                  child: Image.asset('assets/pics/pic_f.png'),
                ),
              ),
              Text(
                'KOIDIO (Y.) BLÉ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lime[200],
                  fontSize: 33.33,
                ),
              ),
              Text(
                'Web Designer',
                style: TextStyle(
                  color: lightOlive,
                  fontSize: 23,
                  decoration: TextDecoration.underline,
                  decorationColor: lightOlive,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: lightOlive,
                  fontSize: 23,
                  decoration: TextDecoration.underline,
                  decorationColor: lightOlive,
                ),
              ),
              Text(
                'Full-Stack Engineer',
                style: TextStyle(
                  color: lightOlive,
                  fontSize: 23,
                  decoration: TextDecoration.underline,
                  decorationColor: lightOlive,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.99),
                child: InkWell(
                  hoverColor: midOlive,
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.33))),
                    color: Colors.black,
                    child: Container(
                      height: 130,
                      width: 499,
                      decoration: BoxDecoration(
                          border: Border.all(color: lightOlive),
                          borderRadius: BorderRadius.circular(3.33)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.info_outlined,
                                  color: lightOlive,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'ABOUT\nFind out more about',
                                      style: TextStyle(
                                          color: lightOlive, fontSize: 19),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    InkWell(
                                      splashColor: midOlive,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AboutPage()));
                                      },
                                      child: Text(
                                        'who am I.',
                                        style: TextStyle(
                                            color: canaryYellow, fontSize: 19),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.99),
                child: InkWell(
                  hoverColor: midOlive,
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.33))),
                    color: Colors.black,
                    child: Container(
                      height: 130,
                      width: 499,
                      decoration: BoxDecoration(
                          border: Border.all(color: lightOlive),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.work_outline_outlined,
                                    color: lightOlive)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 130,
                            width: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'CONSULTANCY \nLearn more about',
                                      style: TextStyle(
                                          color: lightOlive, fontSize: 19),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    InkWell(
                                      splashColor: midOlive,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ConsultancyPage()));
                                      },
                                      child: Text(
                                        'what I do.',
                                        style: TextStyle(
                                            color: canaryYellow, fontSize: 19),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.99),
                child: InkWell(
                  hoverColor: midOlive,
                  onTap: () {},
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.33))),
                    color: Colors.black,
                    child: Container(
                      height: 130,
                      width: 499,
                      decoration: BoxDecoration(
                          border: Border.all(color: lightOlive),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.contacts_outlined, color: lightOlive)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 130,
                            width: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      'CONTACT\nWant to get in touch',
                                      style: TextStyle(
                                          color: lightOlive, fontSize: 19),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    InkWell(
                                      splashColor: Colors.lightGreen[300],
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ContactPage()));
                                      },
                                      child: Text(
                                        'send me a message.',
                                        style: TextStyle(
                                            color: canaryYellow, fontSize: 19),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 99),
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
    );
  }
}
