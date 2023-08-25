import 'package:app/ui/components/checks_form_widget.dart';
import 'package:app/ui/components/operation_widget.dart';
import 'package:app/ui/pages/operation_activities_page.dart';
import 'package:app/ui/pages/report_problem_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationDetailsPage extends StatelessWidget {
  const OperationDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Détails de l\'opération'),
        actions: [
          Tooltip(
            message: 'Flux d\'activité',
            child: IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OperationActivitiesPage())),
              icon: const Badge(
                backgroundColor: Colors.white,
                label: Text(''),
                largeSize: 8,
                offset: Offset(4, -4),
                child: Icon(FlutterIcons.comment_discussion_oct, size: 20,)
              ),
            ),
          ),
          PopupMenuButton<String>(
            tooltip: 'Plus',
            onSelected: (action) {
              switch (action) {
                case 'Signaler un problème':
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ReportProblemPage()));
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return {'Mettre à jour les coordonnées géographiques du site', 'Voir sur la carte', 'Signaler un problème', 'Fermer l\'opération'}.map((String choice) {
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
          children: [
            const OperationWidget(),
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
                            'Formulaires',
                            style: GoogleFonts.ptSans(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text('[1 formulaires fermés / 3 formulaires]',),
                          const SizedBox(height: 24),
                          SizedBox(
                            height: 166,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              primary: false,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ChecksFormWidget(isComplete: index == 1 ? true : false,);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
