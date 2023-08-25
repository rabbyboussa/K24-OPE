import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportProblemPage extends StatefulWidget {
  const ReportProblemPage({Key? key}) : super(key: key);

  @override
  State<ReportProblemPage> createState() => _ReportProblemPageState();
}

class _ReportProblemPageState extends State<ReportProblemPage> {
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
        title: const Text('Signaler un problème'),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text('Type'),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(0.0)),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      hintText: 'Veuillez sélectionner le type de problème',
                      hintStyle: GoogleFonts.ptSans(
                        color: Colors.grey,
                      )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Message'),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18
                        ),
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
              const SizedBox(height: 24),
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
                          onTap: () async {},
                          child: Center(
                            child: Text(
                              'ENVOYER',
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
      ),
    );
  }
}