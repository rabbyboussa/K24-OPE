import 'package:app/ui/components/check_item_header.dart';
import 'package:flutter/material.dart';

class CheckItem extends StatefulWidget {
  const CheckItem({Key? key}) : super(key: key);

  @override
  State<CheckItem> createState() => _CheckItemState();
}

class _CheckItemState extends State<CheckItem> {
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
      color: Colors.white,
      margin: const EdgeInsets.only(top: 4),
      child: const CheckItemHeader(),
    );
  }
}