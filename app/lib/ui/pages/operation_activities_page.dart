import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationActivitiesPage extends StatefulWidget {
  const OperationActivitiesPage({Key? key}) : super(key: key);

  @override
  State<OperationActivitiesPage> createState() => _OperationActivitiesPageState();
}

class _OperationActivitiesPageState extends State<OperationActivitiesPage> {
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
        title: const Text('Flux d\'activité'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.all(Radius.circular(12))
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Vous pouvez suivre les activités liés à cette opération et ces formulaires et échanger des messages avec votre hiérarchie.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  DateChip(
                    date: DateTime(2021, 5, 7),
                    color: const Color(0x558AD3D5),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: const BorderRadius.all(Radius.circular(12))
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Vous avez validé le formulaire MGE-002-230530132416',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  BubbleNormal(
                    text: 'Salut Marc, pourrais-tu revoir le contrôle CTRL0100026 du formulaire que tu viens de valider ?',
                    isSender: false,
                    color: Colors.red,
                    tail: true,
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  BubbleNormal(
                    text: 'Les photos que tu as soumises ne sont pas claires.',
                    isSender: false,
                    color: Colors.red,
                    tail: false,
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 2),
                  BubbleNormal(
                    text: 'Bien sûr ! Je regarde ça tout de suite',
                    isSender: true,
                    color: Colors.grey.shade300,
                    tail: true,
                    sent: true,
                    delivered: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: const BorderRadius.all(Radius.circular(12))
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Haurel a réouvert le formulaire MGE-002-230530132416',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.all(Radius.circular(32))
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 8),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: const Icon(
                                  FlutterIcons.add_mdi,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Entrez votre message',
                                hintStyle: GoogleFonts.ptSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              keyboardType: TextInputType.text,
                              maxLines: null,
                              style: GoogleFonts.ptSans(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                )
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          FlutterIcons.send_mco,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}