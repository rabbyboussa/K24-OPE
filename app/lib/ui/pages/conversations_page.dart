import 'package:app/ui/components/conversation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class ConversationsPage extends StatefulWidget {
  const ConversationsPage({Key? key}) : super(key: key);

  @override
  State<ConversationsPage> createState() => _ConversationsPageState();
}

class _ConversationsPageState extends State<ConversationsPage> {
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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.black26,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(FlutterIcons.search1_ant, color: Colors.white, size: 18,),
                                      filled: true,
                                      contentPadding: const EdgeInsets.only(top: 16),
                                      border: InputBorder.none,
                                      hintText: 'Rechercher une conversation...',
                                      hintStyle: GoogleFonts.ptSans(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                    maxLines: null,
                                    style: GoogleFonts.ptSans(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ConversationWidget(),
                  ConversationWidget(),
                  ConversationWidget(),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}