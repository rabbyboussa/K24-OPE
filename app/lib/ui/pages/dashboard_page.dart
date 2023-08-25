import 'package:app/ui/components/operation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: DropdownButtonFormField(
                  onChanged: (value) {

                  },
                  isDense: true,
                  isExpanded: false,
                  decoration: const InputDecoration.collapsed(hintText: ''),
                  value: 'Cette semaine',
                  items: <String>['Cette semaine', 'Ce mois'].map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Text(
                        e,
                        style: GoogleFonts.ptSans(fontWeight: FontWeight.w600),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 112,
                          width: 160,
                          color: Colors.deepPurple.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.deepPurple,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  'operations assignés',
                                  style: TextStyle(color: Colors.deepPurple,),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 112,
                          width: 160,
                          color: Colors.green.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '12',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.green,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Icon(FlutterIcons.arrow_up_faw, color: Colors.green, size: 14,)
                                  ],
                                ),
                                const Text(
                                  'operations exécutés',
                                  style: TextStyle(color: Colors.green),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 112,
                          width: 160,
                          color: Colors.amber.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '05',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.amber,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  'operations en cours d\'exécution',
                                  style: TextStyle(color: Colors.amber),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 112,
                          width: 160,
                          color: Colors.red.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '27',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.red,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Icon(FlutterIcons.arrow_down_faw, color: Colors.red, size: 14,)
                                  ],
                                ),
                                const Text(
                                  'Contrôles critiques signalés',
                                  style: TextStyle(color: Colors.red),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.white,
              child:  Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '20',
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              'Opérations',
                              style: GoogleFonts.ptSans(
                                color: Colors.grey
                              ),
                            )
                          ],
                        ),
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 6.0,
                          percent:  0.80,
                          circularStrokeCap: CircularStrokeCap.round,
                          animation: true,
                          backgroundColor: Colors.grey.shade100,
                          center: CircularPercentIndicator(
                            radius: 38.0,
                            lineWidth: 6.0,
                            percent:  0.40,
                            circularStrokeCap: CircularStrokeCap.round,
                            animation: true,
                            backgroundColor: Colors.grey.shade100,
                            center: CircularPercentIndicator(
                              radius: 26.0,
                              lineWidth: 6.0,
                              percent:  1,
                              circularStrokeCap: CircularStrokeCap.round,
                              animation: true,
                              backgroundColor: Colors.grey.shade100,
                              center: Container(),
                              progressColor: Colors.amber,
                            ),
                            progressColor: Colors.red,
                          ),
                          progressColor: Colors.green,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '12',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                Text(
                                  ' / 16',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Maintenance',
                              style: GoogleFonts.ptSans(color: Colors.grey),
                            )
                          ],
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '2',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                Text(
                                  ' / 3',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Intervention',
                              style: GoogleFonts.ptSans(color: Colors.grey),
                            )
                          ],
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    shape: BoxShape.circle
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '1',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                Text(
                                  ' / 1',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Installation',
                              style: GoogleFonts.ptSans(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 16, bottom: 8),
              child: const Text(
                'Dernieres opérations exécutés',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const OperationWidget(),
            const OperationWidget(),
          ],
        ),
      ),
    );
  }
}