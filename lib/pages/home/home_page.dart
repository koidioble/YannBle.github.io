import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yannble/pages/about/about_page.dart';
import 'package:yannble/pages/consultancy/consultancy_page.dart';
import 'package:yannble/pages/contact/contact_page.dart';
import 'package:yannble/responsive/responsive.dart';
import 'package:yannble/widgets/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              lightOlive,
              Colors.white,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          color: Colors.red[100],
        ),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Card(
            elevation: 3,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(3),
                color: lightOlive,
              ),
              child: Scaffold(
                backgroundColor: midOlive,
                body: SizedBox(
                  width: Responsive.isMobile(context)
                      ? Responsive.widthOfScreen(context) * 0.9
                      : Responsive.widthOfScreen(context) * 0.8,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 9),
                          Padding(
                            padding: const EdgeInsets.all(33),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 139.99,
                                    child: CircleAvatar(
                                      radius: 70,
                                      backgroundColor: lightOlive,
                                      child: const CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/pics/pic_f.png'),
                                        radius: 66,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 9),
                                    child: Column(
                                      children: [
                                        const Row(
                                          children: [
                                            Text(
                                              "Koidio Y. Blé",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 159, 183, 132),
                                                //fontSize: 23.33,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "     Full-Stack Engineer",
                                              style: TextStyle(
                                                  color: Colors.lightGreen[100],
                                                  fontSize: 9),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  /////
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              children: [
                                InkWell(
                                  hoverColor: green300,
                                  onTap: () {},
                                  child: Card(
                                    elevation: 9,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3.33))),
                                    color: midOlive,
                                    child: Container(
                                      height: 130,
                                      width: MediaQuery.sizeOf(context).width,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: lightOlive,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(3.33)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 60,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.info_outlined,
                                                  color: Colors.lightGreen[100],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 190,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'ABOUT\nFind out more about',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .lightGreen[300],
                                                          fontSize: 19),
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
                                                                builder:
                                                                    (context) =>
                                                                        const AboutPage()));
                                                      },
                                                      child: Text(
                                                        'who am I.',
                                                        style: TextStyle(
                                                            color: canaryYellow,
                                                            fontSize: 19),
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
                                ExpansionTileGroup(
                                  spaceBetweenItem: 16,
                                  children: [
                                    ExpansionTileItem(
                                      iconColor: Colors.red[100],
                                      collapsedIconColor: Colors.red[300],
                                      title: Row(
                                        children: [
                                          Text(
                                            'About:',
                                            style: GoogleFonts.ubuntuMono(
                                              color: Colors.lime[100],
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors.lime[100],
                                              decorationThickness: 3,
                                            ),
                                          ),
                                        ],
                                      ),
                                      expandedAlignment: Alignment.centerLeft,
                                      childrenPadding: EdgeInsets.all(16),
                                      children: [
                                        Text(
                                          '∙ Name: Koidio (Y.) Blé',
                                          style: GoogleFonts.ubuntuMono(
                                              color: Colors.lime[100]),
                                        ),
                                        const SizedBox(height: 9),
                                        Text(
                                          '∙ Occupation: Full-Stack Engineer.',
                                          style: GoogleFonts.ubuntuMono(
                                              color: Colors.lime[100]),
                                        ),
                                        const SizedBox(height: 9),
                                        Text(
                                          "∙ Passion: ",
                                          style: GoogleFonts.ubuntuMono(
                                              color: Colors.lime[100]),
                                        ),
                                        const SizedBox(height: 9),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 13),
                                          child: Text(
                                            "Developing innovative software solutions that improve user experiences.",
                                            style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                /////////

                                ///
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              children: [
                                InkWell(
                                  hoverColor: midOlive,
                                  onTap: () {},
                                  child: Card(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(3.33)),
                                    ),
                                    color: midOlive,
                                    child: Container(
                                      height: 130,
                                      width: 499,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: lightOlive,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 60,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.work_outline_outlined,
                                                  color: Colors.lightGreen[100],
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 130,
                                            width: 190,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'CONSULTANCY \nLearn more about',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .lightGreen[300],
                                                          fontSize: 19),
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
                                                                builder:
                                                                    (context) =>
                                                                        const ConsultancyPage()));
                                                      },
                                                      child: Text(
                                                        'what I do.',
                                                        style: TextStyle(
                                                            color: canaryYellow,
                                                            fontSize: 19),
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
                                Column(
                                  children: [
                                    ExpansionTileGroup(
                                      spaceBetweenItem: 16,
                                      children: [
                                        ExpansionTileItem(
                                          iconColor: Colors.red[100],
                                          collapsedIconColor: Colors.red[300],
                                          title: Row(
                                            children: [
                                              Text(
                                                'Consultancy:',
                                                style: GoogleFonts.ubuntuMono(
                                                  color: Colors.lime[100],
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      Colors.lime[100],
                                                  decorationThickness: 3,
                                                ),
                                              ),
                                            ],
                                          ),
                                          expandedAlignment:
                                              Alignment.centerLeft,
                                          childrenPadding: EdgeInsets.all(16),
                                          children: [
                                            Text(
                                              "∙ Web Designer.",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              "∙ Software Engineer.",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              "∙ Flutter Development.",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(33),
                            child: Column(
                              children: [
                                InkWell(
                                  hoverColor: midOlive,
                                  onTap: () {},
                                  child: Card(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3.33))),
                                    color: midOlive,
                                    child: Container(
                                      height: 130,
                                      width: 499,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: lightOlive),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 60,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.contacts_outlined,
                                                  color: Colors.lightGreen[100],
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 130,
                                            width: 190,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  children: [
                                                    Text(
                                                      'CONTACT\nWant to get in touch',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .lightGreen[300],
                                                          fontSize: 19),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    InkWell(
                                                      splashColor: Colors
                                                          .lightGreen[300],
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const ContactPage()));
                                                      },
                                                      child: Text(
                                                        'send me a message.',
                                                        style: TextStyle(
                                                          color: canaryYellow,
                                                          fontSize: 19,
                                                        ),
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
                                Column(
                                  children: [
                                    ExpansionTileGroup(
                                      spaceBetweenItem: 16,
                                      children: [
                                        ExpansionTileItem(
                                          iconColor: Colors.red[100],
                                          collapsedIconColor: Colors.red[300],
                                          title: Row(
                                            children: [
                                              Text(
                                                'Contact:',
                                                style: GoogleFonts.ubuntuMono(
                                                  color: Colors.lime[100],
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      Colors.lime[100],
                                                  decorationThickness: 3,
                                                ),
                                              ),
                                            ],
                                          ),
                                          expandedAlignment:
                                              Alignment.centerLeft,
                                          childrenPadding: EdgeInsets.all(16),
                                          children: [
                                            Text(
                                              "∙ Email",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              "∙ TelephoneE",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              "∙ Portofolio",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              "∙ Other's Social Platform",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
                              style: GoogleFonts.ubuntu(
                                  color: Colors.lightGreen[300]),
                            ),
                          ),
                          const SizedBox(height: 9),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
