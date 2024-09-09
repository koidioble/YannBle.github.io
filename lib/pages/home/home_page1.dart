import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yannble/pages/about/about_page.dart';
import 'package:yannble/pages/consultancy/consultancy_page.dart';
import 'package:yannble/pages/contact/contact_page.dart';
import 'package:yannble/responsive/responsive.dart';
import 'package:yannble/widgets/colors.dart';
import 'package:yannble/widgets/email.dart';
import 'package:yannble/widgets/github.dart';
import 'package:yannble/widgets/linkedin.dart';
import 'package:yannble/widgets/my_divider.dart';
import 'package:yannble/widgets/my_signature.dart';
import 'package:yannble/widgets/portfolio.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
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
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border.all(color: darkOlive),
                  borderRadius: BorderRadius.circular(9),
                  gradient: LinearGradient(
                    colors: [
                      lightOlive,
                      white,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 300),

                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Row(
                          children: [
                            Text('Koidio (Y.) Blé',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 33, color: lightOlive)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 63),
                        child: Row(
                          children: [
                            Text('  Developer',
                                style: GoogleFonts.ubuntu(
                                  color: lightOlive,
                                )),
                          ],
                        ),
                      ),

                      // ROW ONE KOIDIO Y BLE END

                      // ROW TWO

                      // ROW TWO END //

                      /// ABOUT ///
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: [
                            InkWell(
                              hoverColor: midOlive,
                              onTap: () {},
                              child: Card(
                                elevation: 9,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(3.33))),
                                color: transparentColor,
                                child: Container(
                                  height: 130,
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: lightOlive),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
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
                                              // ICON info //
                                              Icon(
                                                Icons.info_outlined,
                                                color: lightGreen100,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: Responsive.isMobile(context)
                                              ? Responsive.widthOfScreen(
                                                      context) *
                                                  0.9
                                              : Responsive.widthOfScreen(
                                                      context) *
                                                  0.8,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  InkWell(
                                                    focusColor: green300,
                                                    hoverColor: green300,
                                                    onTap: () {},
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              9),
                                                      child: Text(
                                                        'ABOUT\nFind out more about',
                                                        style: TextStyle(
                                                          color: green100,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  InkWell(
                                                    hoverColor: canaryYellow,
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const AboutPage()));
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              9),
                                                      child: Text(
                                                        'who am I.',
                                                        style: TextStyle(
                                                            color:
                                                                lightGreen300,
                                                            fontSize: 16),
                                                      ),
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
                            ExpansionTileGroup(
                              spaceBetweenItem: 16,
                              children: [
                                ExpansionTileItem(
                                  iconColor: midOlive,
                                  collapsedIconColor: canaryYellow,
                                  title: Row(
                                    children: [
                                      Text(
                                        'About:',
                                        style: GoogleFonts.ubuntuMono(
                                          color: Colors.lime[100],
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.lime[100],
                                          decorationThickness: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  expandedAlignment: Alignment.centerLeft,
                                  childrenPadding: const EdgeInsets.all(16),
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
                                      "∙ Passion: Code Softwares",
                                      style: GoogleFonts.ubuntuMono(
                                          color: Colors.lime[100]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      /// ABOUT //

                      const MyDivider(),

                      /// CONSULTANCY ///
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: [
                            InkWell(
                              hoverColor: midOlive,
                              onTap: () {},
                              child: Card(
                                elevation: 9,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.33)),
                                ),
                                color: transparentColor,
                                child: Container(
                                  height: 130,
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: lightOlive,
                                      ),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
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
                                                color: lightGreen100,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 130,
                                          width: Responsive.isMobile(context)
                                              ? Responsive.widthOfScreen(
                                                      context) *
                                                  0.9
                                              : Responsive.widthOfScreen(
                                                      context) *
                                                  0.8,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  InkWell(
                                                    focusColor: green300,
                                                    hoverColor: green300,
                                                    onTap: () {},
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              9),
                                                      child: Text(
                                                        'CONSULTANCY \nLearn more about',
                                                        style: TextStyle(
                                                            color: green100,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  InkWell(
                                                    hoverColor: canaryYellow,
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const ConsultancyPage()));
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              9),
                                                      child: Text(
                                                        'what I do.',
                                                        style: TextStyle(
                                                            color:
                                                                lightGreen300,
                                                            fontSize: 16),
                                                      ),
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
                            Column(
                              children: [
                                ExpansionTileGroup(
                                  spaceBetweenItem: 16,
                                  children: [
                                    ExpansionTileItem(
                                      iconColor: midOlive,
                                      collapsedIconColor: canaryYellow,
                                      title: Row(
                                        children: [
                                          Text(
                                            'Consultancy:',
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
                                      childrenPadding: const EdgeInsets.all(16),
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

                      // CONSULTANCY END //
                      const MyDivider(),

                      /// CONTACT ///

                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: [
                            InkWell(
                              hoverColor: midOlive,
                              onTap: () {},
                              child: Card(
                                elevation: 9,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(3.33))),
                                color: transparentColor,
                                child: Container(
                                  height: 130,
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: lightOlive),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
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
                                                color: lightGreen100,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: Responsive.isMobile(context)
                                              ? Responsive.widthOfScreen(
                                                      context) *
                                                  0.9
                                              : Responsive.widthOfScreen(
                                                      context) *
                                                  0.8,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  InkWell(
                                                    hoverColor: green300,
                                                    onTap: () {},
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              9),
                                                      child: Text(
                                                        'CONTACT\nWant to get in touch',
                                                        style: TextStyle(
                                                            color: green100,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  InkWell(
                                                    hoverColor: canaryYellow,
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const ContactPage()));
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              9),
                                                      child: Text(
                                                        'send me a message.',
                                                        style: TextStyle(
                                                            color:
                                                                lightGreen300,
                                                            fontSize: 16),
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
                            ),
                            Column(
                              children: [
                                ExpansionTileGroup(
                                  spaceBetweenItem: 16,
                                  children: [
                                    ExpansionTileItem(
                                      collapsedIconColor: canaryYellow,
                                      iconColor: darkOlive,
                                      title: Row(
                                        children: [
                                          Text(
                                            'Contact:',
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
                                      childrenPadding: const EdgeInsets.all(16),
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "∙ Email:",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(9),
                                              child: EmailButton(
                                                emailAddress:
                                                    'koidioble@gmail.com',
                                              ),
                                            ),
                                          ],
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Text(
                                                "∙ Portofolio:",
                                                style: GoogleFonts.ubuntuMono(
                                                  color: Colors.lime[100],
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.all(9),
                                                child: PortfolioLink(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "∙ Social:",
                                              style: GoogleFonts.ubuntuMono(
                                                color: Colors.lime[100],
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            const LinkedinLink(),
                                            const GithubLink()
                                          ],
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
                      const MyDivider(),

                      const SizedBox(height: 9),
                    ],
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
