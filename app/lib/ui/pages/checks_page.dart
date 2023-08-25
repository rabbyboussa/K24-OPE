import 'package:app/ui/components/check_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChecksPage extends StatefulWidget {
  const ChecksPage({Key? key}) : super(key: key);

  @override
  State<ChecksPage> createState() => _ChecksPageState();
}

class _ChecksPageState extends State<ChecksPage> {
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Contrôles'),
            const SizedBox(height: 2),
            Text(
              '21/25 terminé',
              style: GoogleFonts.ptSans(
                fontSize: 13,
                fontWeight: FontWeight.w300
              ),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CheckItem(),
            CheckItem(),
            CheckItem(),
            CheckItem(),
          ],
        ),
      ),
    );
  }
}