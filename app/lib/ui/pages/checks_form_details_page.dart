import 'package:app/ui/components/check_widget.dart';
import 'package:app/ui/components/checks_form_state.dart';
import 'package:app/ui/components/prefixed_labeled_text.dart';
import 'package:app/ui/pages/checks_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ChecksFormDetailsPage extends StatelessWidget {
  const ChecksFormDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Détails du formulaire'),
        actions: [
          PopupMenuButton<String>(
            tooltip: 'Plus',
            itemBuilder: (BuildContext context) {
              return {'Imprimer le code QR de l\'équipement', 'Mettre à jour la localisation de l\'équipement', 'Signaler un problème', 'Valider le formulaire'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MGE-002-230530132416',
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(fontWeight: FontWeight.w700)
                      ),
                    ),
                    const SizedBox(height: 8),
                    const PrefixedLabeledText(
                      prefixWidget: Icon(
                          FlutterIcons.box_fea,
                          size: 18,
                          color: Colors.grey
                      ),
                      text: 'CAT 30 KVA',
                    ),
                    const SizedBox(height: 8),
                    const PrefixedLabeledText(
                      prefixWidget: Icon(
                        FlutterIcons.tag_fea,
                        size: 18,
                        color: Colors.grey
                      ),
                      text: 'GE002-0059',
                    ),
                    const SizedBox(height: 8),
                    const PrefixedLabeledText(
                      prefixWidget: Icon(
                          FlutterIcons.location_ent,
                          size: 18,
                          color: Colors.grey
                      ),
                      text: 'Rez de chaussée',
                    ),
                    const SizedBox(height: 12),
                    const ChecksFormState(state: 'Ouvert'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contrôles',
                            style: GoogleFonts.ptSans(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Text('[12 contrôles(s) exécuté(s) / 25 contrôle(s)]',),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              const Text('48% exécuté'),
                              Expanded(
                                child: LinearPercentIndicator(
                                  animation: true,
                                  lineHeight: 6.0,
                                  animationDuration: 1000,
                                  percent: 0.48,
                                  center: null,
                                  barRadius: const Radius.circular(16),
                                  progressColor: Colors.green,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CheckItem(),
            CheckItem(),
            CheckItem(),
          ],
        ),
      ),
    );
  }
}
