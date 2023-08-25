import 'package:app/ui/components/check_image.dart';
import 'package:app/ui/components/item_state.dart';
import 'package:app/ui/components/item_title.dart';
import 'package:app/ui/components/k_button.dart';
import 'package:app/ui/utils/k_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckDetailsPage extends StatefulWidget {
  const CheckDetailsPage({Key? key}) : super(key: key);

  @override
  State<CheckDetailsPage> createState() => _CheckDetailsPageState();
}

class _CheckDetailsPageState extends State<CheckDetailsPage> {
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
        title: const Text('Détails du contrôle'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemTitle(
                        title:
                            '#1 - Etat tuyau d\'échappement et gaine (CTRL010095)'),
                    ItemState()
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Résultat'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red, fontSize: 18),
                            )
                          ],
                        ),
                        SizedBox(height: 4),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.0)),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Observation'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red, fontSize: 18),
                            )
                          ],
                        ),
                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.0)),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Photos',
                      style: GoogleFonts.ptSans(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Vous pouvez ajouter jusqu\'à trois photos pour justifier l\'exécution du contrôles',
                      style: KStyle.grayedTextStyle,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 104,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const CheckImage();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
              child: KButton(
                  backgroundColor: Colors.black,
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'SAUVEGARDER LE CONTROLE',
                        style: KStyle.kButtonTextStyle,
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
