import 'package:app/ui/components/date_item.dart';
import 'package:app/ui/components/operation_widget.dart';
import 'package:app/ui/components/operations_page_filters_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationsPage extends StatefulWidget {
  const OperationsPage({Key? key}) : super(key: key);

  @override
  State<OperationsPage> createState() => _OperationsPageState();
}

class _OperationsPageState extends State<OperationsPage> {
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
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '24 juin 2023',
                              style: GoogleFonts.ptSans(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            Text(
                              'Samedi',
                              style: GoogleFonts.ptSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.red,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return DateItem(isSelected: index == 5 ? true : false);
                    },
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  OperationsPageFiltersBar(),
                  OperationWidget(),
                  OperationWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}