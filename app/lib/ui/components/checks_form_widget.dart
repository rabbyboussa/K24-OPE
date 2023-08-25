import 'package:app/ui/components/checks_form_state.dart';
import 'package:app/ui/components/prefixed_labeled_text.dart';
import 'package:app/ui/pages/checks_form_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ChecksFormWidget extends StatefulWidget {
  final bool isComplete;

  const ChecksFormWidget({Key? key, this.isComplete = false}) : super(key: key);

  @override
  State<ChecksFormWidget> createState() => _ChecksFormWidgetState();
}

class _ChecksFormWidgetState extends State<ChecksFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 166,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: widget.isComplete ? Colors.green.shade50 : Colors.deepOrange.shade50,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChecksFormDetailsPage())),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          splashColor: widget.isComplete ? Colors.green.shade100 : Colors.deepOrange.shade100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MGE-002-230530132416',
                      style: GoogleFonts.montserrat(
                        color: widget.isComplete ? Colors.green : Colors.orange,
                        fontWeight: FontWeight.w700
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
                    ChecksFormState(state: widget.isComplete ? 'Fermé' : 'Ouvert')
                  ],
                ),
                CircularPercentIndicator(
                  radius: 32.0,
                  lineWidth: 6.0,
                  percent: widget.isComplete ?  1 : 0.65,
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  backgroundColor: Colors.transparent,
                  center: Text(
                    widget.isComplete ?  '100%' : '65%',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )
                    ),
                  ),
                  progressColor: widget.isComplete ? Colors.green : Colors.orange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
