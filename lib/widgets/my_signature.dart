import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class MySignature extends StatelessWidget {
  const MySignature({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "© Koidio Y. Blé - 2024",
        style: GoogleFonts.ubuntu(color: lightGreen100),
      ),
    );
  }
}
