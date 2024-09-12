import 'package:flutter/material.dart';
import 'package:yannble/widgets/colors.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Divider(color: lightGreen100),
    );
  }
}