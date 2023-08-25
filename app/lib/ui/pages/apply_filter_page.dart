import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyFilterPage extends StatefulWidget {
  const ApplyFilterPage({Key? key}) : super(key: key);

  @override
  State<ApplyFilterPage> createState() => _ApplyFilterPageState();
}

class _ApplyFilterPageState extends State<ApplyFilterPage> {
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
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Appliquer un filtre'),
        actions: [
          Tooltip(
            message: 'Réinitialiser les filtres',
            child: IconButton(
              onPressed: () {},
              icon: const Icon(FlutterIcons.trash_2_fea, size: 20,),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Client',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration(
                                  hintText: 'Tous les clients',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                maxLines: null,
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    )
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Site',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration(
                                  hintText: 'Tous les sites',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                maxLines: null,
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    )
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Etat',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 8),
                    ToggleButtons(
                      direction: Axis.horizontal,
                      onPressed: (int index) {
                        setState(() {});
                      },
                      selectedBorderColor: Colors.red,
                      selectedColor: Colors.white,
                      fillColor: Colors.red,
                      color: Colors.black,
                      constraints: BoxConstraints(
                        minHeight: 48.0,
                        minWidth: (MediaQuery.of(context).size.width - 36) / 3,
                      ),
                      isSelected: const [true, false, false],
                      children: const [
                        Text('Non excuté'),
                        Text('Exécution'),
                        Text('Exécuté'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Priorité',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 8),
                    ToggleButtons(
                      direction: Axis.horizontal,
                      onPressed: (int index) {
                        setState(() {});
                      },
                      selectedBorderColor: Colors.red,
                      selectedColor: Colors.white,
                      fillColor: Colors.red,
                      color: Colors.black,
                      constraints: BoxConstraints(
                        minHeight: 48.0,
                        minWidth: (MediaQuery.of(context).size.width - 37) / 4,
                      ),
                      isSelected: const [false, false, false, true],
                      children: const [
                        Text('Sans'),
                        Text('Faible'),
                        Text('Moyen'),
                        Text('Elevé'),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 56.0,
                            color: Colors.black,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap:() async {
                                  Navigator.of(context).pop();
                                },
                                child: Center(
                                  child: Text(
                                    "APPLIQUER LES FILTRES",
                                    style: GoogleFonts.ptSans(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        fontWeight:
                                        FontWeight.w700
                                      )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}