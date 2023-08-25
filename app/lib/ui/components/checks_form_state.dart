import 'package:flutter/material.dart';

class ChecksFormState extends StatefulWidget {
  final String state;

  const ChecksFormState({Key? key, required this.state}) : super(key: key);

  @override
  State<ChecksFormState> createState() => _ChecksFormStateState();
}

class _ChecksFormStateState extends State<ChecksFormState> {
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
      decoration: BoxDecoration(
        color: widget.state == 'Ouvert' ? Colors.orange : Colors.green,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8.0),
        child: Text(
          widget.state,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}