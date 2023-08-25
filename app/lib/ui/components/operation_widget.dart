import 'package:app/ui/components/operation_priority_item.dart';
import 'package:app/ui/components/operation_state_item.dart';
import 'package:app/ui/components/prefixed_labeled_text.dart';
import 'package:app/ui/pages/operation_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationWidget extends StatelessWidget {
  const OperationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OperationDetailsPage())),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.all(Radius.circular(4))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    child: Text('OP_PM20221214150353ZV_ST00017_A2FRCE_02-01-2023',
                      style: GoogleFonts.ptSans(
                        textStyle: const TextStyle(
                          color: Colors.red,
                          fontSize: 11,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'MAINTENANCE GROUPE-ELECTROGENE [OP_MTCE - PASSAGE 2]',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(fontWeight: FontWeight.w700)
                  ),
                ),
                const SizedBox(height: 8),
                const PrefixedLabeledText(
                  prefixWidget: Icon(
                    FlutterIcons.hour_glass_ent,
                    size: 16,
                    color: Colors.grey
                  ),
                  text: 'Exécution attendu ajourd\'hui',
                ),
                const SizedBox(height: 8),
                const PrefixedLabeledText(
                  prefixWidget: Icon(
                    FlutterIcons.building_o_faw,
                    size: 16,
                    color: Colors.grey
                  ),
                  text: 'SNPC [CLT1250036]',
                ),
                const SizedBox(height: 8),
                const PrefixedLabeledText(
                  prefixWidget: Icon(
                    FlutterIcons.location_ent,
                    size: 16,
                    color: Colors.grey
                  ),
                  text: 'Direction',
                ),
                const SizedBox(height: 8),
                const PrefixedLabeledText(
                  prefixWidget: Icon(
                    FlutterIcons.user_circle_o_faw,
                    size: 16,
                    color: Colors.grey
                  ),
                  text: 'Emilia DOREGO',
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OperationStateItem(),
                    Row(
                      children: [
                        OperationPriorityItem(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
