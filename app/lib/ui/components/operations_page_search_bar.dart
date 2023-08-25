import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class OperationPageSearchBar extends StatefulWidget {
  const OperationPageSearchBar({Key? key}) : super(key: key);

  @override
  State<OperationPageSearchBar> createState() => _OperationPageSearchBarState();
}

class _OperationPageSearchBarState extends State<OperationPageSearchBar> {
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
      color: Colors.red,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: SizedBox(
          height: 40,
          child: TextField(
            maxLines: 1,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              filled: true,
              fillColor: Colors.black12,
              hintText: 'Rechercher par nom ou référence d\'opération',
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300
              ),
              prefixIcon: Icon(
                FlutterIcons.search_fea,
                color: Colors.white,
                size: 16,
              ),
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
      ),
    );
  }
}