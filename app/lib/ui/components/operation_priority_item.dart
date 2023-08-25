import 'package:flutter/material.dart';

class OperationPriorityItem extends StatefulWidget {
  const OperationPriorityItem({Key? key}) : super(key: key);

  @override
  State<OperationPriorityItem> createState() => _OperationPriorityItemState();
}

class _OperationPriorityItemState extends State<OperationPriorityItem> {
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
      color: Colors.blue.shade50,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8.0),
        child: Text(
          'Faible',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }
}