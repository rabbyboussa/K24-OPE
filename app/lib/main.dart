import 'package:app/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'K24 OPE',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: GoogleFonts.ptSansTextTheme(),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
          elevation: 2
        ),
        iconTheme: const IconThemeData(size: 22),
      ),
      home: const LoginPage(),
    );
  }
}
