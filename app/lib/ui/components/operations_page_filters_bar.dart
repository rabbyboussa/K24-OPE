import 'package:app/ui/pages/apply_filter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationsPageFiltersBar extends StatefulWidget {
  const OperationsPageFiltersBar({Key? key}) : super(key: key);

  @override
  State<OperationsPageFiltersBar> createState() => _OperationsPageFiltersBarState();
}

class _OperationsPageFiltersBarState extends State<OperationsPageFiltersBar> {
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Badge(
                        backgroundColor: Colors.white,
                        child: Tooltip(
                          message: 'Filtres',
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ApplyFilterPage())),
                                  borderRadius: const BorderRadius.all(Radius.circular(32)),
                                  child: const Icon(
                                    FlutterIcons.sliders_fea,
                                    color: Colors.white,
                                    size: 16,
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        child: const VerticalDivider(color: Colors.white)
                      ),
                      const Text(
                        '5 résultats',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Trier par',
                                  style: GoogleFonts.ptSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                const SizedBox(height: 16),
                                ListTile(
                                  onTap: () {},
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                                  title: const Text('Client'),
                                  trailing: const Icon(FlutterIcons.check_ant, color: Colors.red,),
                                ),
                                ListTile(
                                  onTap: () {},
                                  contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                  title: const Text('Site'),
                                ),
                                ListTile(
                                  onTap: () {},
                                  contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                  title: const Text('Etat'),
                                ),
                                ListTile(
                                  onTap: () {},
                                  contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                  title: const Text('Priorité'),
                                )
                              ],
                            ),
                          );
                        }
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Trier par:  ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Client',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Icon(
                              FlutterIcons.sort_faw,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}