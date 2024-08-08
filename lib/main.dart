import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yannble/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yann Blé',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
        //   fontFamily: GoogleFonts.tinos().fontFamily,
        fontFamily: GoogleFonts.ubuntu().fontFamily,

        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
