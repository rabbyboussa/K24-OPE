import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemState extends StatefulWidget {
  const ItemState({Key? key}) : super(key: key);

  @override
  State<ItemState> createState() => _ItemStateState();
}

class _ItemStateState extends State<ItemState> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.green,
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
          child: Center(
            child: Text('Exécuté',
              style: GoogleFonts.ptSans(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                )
              )
            ),
          ),
        )
      ],
    );
  }
}