import 'package:flutter/material.dart';

class PrefixedLabeledText extends StatelessWidget {
  final Widget prefixWidget;
  final String text;
  final Color textColor;

  const PrefixedLabeledText({
    Key? key,
    required this.prefixWidget,
    required this.text,
    this.textColor = Colors.black
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        prefixWidget,
        const SizedBox(width: 10),
        Text(text)
      ],
    );
  }
}
