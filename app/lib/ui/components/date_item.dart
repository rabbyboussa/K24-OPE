import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateItem extends StatefulWidget {
  final bool isSelected;

  const DateItem({Key? key, required this.isSelected}) : super(key: key);

  @override
  State<DateItem> createState() => _DateItemState();
}

class _DateItemState extends State<DateItem> {
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
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        border: widget.isSelected ? Border.all(color: Colors.white): null
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
            color: widget.isSelected ? Colors.white : Colors.black26,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '24',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: widget.isSelected ? Colors.black : Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    )
                  ),
                ),
                Text(
                  'Sam',
                  style: GoogleFonts.ptSans(
                    textStyle: TextStyle(
                      color: widget.isSelected ? Colors.black : Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
