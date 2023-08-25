import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  final Color backgroundColor;
  final Function onTap;
  final Widget child;

  const KButton({
    Key? key,
    required this.backgroundColor,
    required this.onTap,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: backgroundColor,
            child: Material(
              elevation: 8,
              color: Colors.transparent,
              child: InkWell(
                onTap: () => onTap(),
                child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
