import 'package:flutter/material.dart';

class CheckImage extends StatefulWidget {
  const CheckImage({Key? key}) : super(key: key);

  @override
  State<CheckImage> createState() => _CheckImageState();
}

class _CheckImageState extends State<CheckImage> {
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
      width: 104,
      height: 104,
      margin: const EdgeInsets.only(right: 8),
      color: Colors.red,
    );
  }
}