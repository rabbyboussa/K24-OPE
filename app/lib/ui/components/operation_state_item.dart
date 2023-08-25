import 'package:flutter/material.dart';

class OperationStateItem extends StatefulWidget {
  const OperationStateItem({Key? key}) : super(key: key);

  @override
  State<OperationStateItem> createState() => _OperationStateItemState();
}

class _OperationStateItemState extends State<OperationStateItem> {
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
      color: Colors.redAccent,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8.0),
        child: Text(
          'Non exécutée',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}