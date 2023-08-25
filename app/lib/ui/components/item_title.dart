import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemTitle extends StatelessWidget {
  final String title;
  const ItemTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.ptSans(
        textStyle: const TextStyle(
          color: Colors.black,
        )
      )
    );
  }
}
