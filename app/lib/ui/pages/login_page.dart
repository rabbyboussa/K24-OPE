
import 'package:app/ui/pages/home_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _hidePassword = true;
  String _username = '';
  String _password = '';
  bool _isValid = true;

  String _message = '';

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('K24 OPERATIONS'),
      ),
      body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
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
                          Text('Connexion',
                            style: GoogleFonts.ptSans(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                            'Veuillez entrer vos identifiants de connexion pour accéder à votre compte. Les champs ci-dessous sont obligatoires.',
                            style: GoogleFonts.ptSans(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Nom d\'utilisateur',
                                style: const TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.ptSans(
                                      color: Colors.red, fontSize: 18),
                                  ),
                                ]
                              ),
                            ),

                            const SizedBox(height: 8),

                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: TextField(
                                                onChanged: (value) {
                                                  setState(() {
                                                    _username = value;
                                                    _message = '';
                                                  });
                                                },
                                                cursorColor: Colors.black,
                                                decoration: const InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.all(Radius.circular(0.0)),
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                                keyboardType:
                                                TextInputType.name,
                                                maxLines: null,
                                                style: GoogleFonts.ptSans(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.w700
                                                  )
                                                ),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),

                            const SizedBox(height: 16),

                            RichText(
                              text: TextSpan(
                                text: 'Mot de passe',
                                style: const TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.ptSans(color: Colors.red, fontSize: 18),
                                  ),
                                ]
                              ),
                            ),

                            const SizedBox(height: 8),

                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: TextField(
                                                onChanged: (value) {
                                                  setState(() {
                                                    _password = value;
                                                    _message = '';
                                                  });
                                                },
                                                cursorColor: Colors.black,
                                                decoration: InputDecoration(
                                                    border:
                                                    const OutlineInputBorder(
                                                      borderRadius:
                                                      BorderRadius
                                                          .all(
                                                        Radius.circular(
                                                            0.0),
                                                      ),
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    suffixIcon: Container(
                                                      width: 32.0,
                                                      height: 32.0,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.transparent,
                                                          borderRadius: BorderRadius.all(Radius.circular(32.0))),
                                                      child: Material(
                                                        color: Colors
                                                            .transparent,
                                                        borderRadius:
                                                        const BorderRadius
                                                            .all(
                                                            Radius
                                                                .circular(
                                                                32.0)),
                                                        child: InkWell(
                                                          borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  32.0)),
                                                          onTap: () {
                                                            setState(() {
                                                              _hidePassword =
                                                              !_hidePassword;
                                                            });
                                                          },
                                                          child: Icon(
                                                            _hidePassword
                                                                ? FlutterIcons.eye_fea : FlutterIcons.eye_off_fea,
                                                            color:
                                                            Colors.black,
                                                            size: 18.0,
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                                obscureText: _hidePassword,
                                                keyboardType: TextInputType
                                                    .visiblePassword,
                                                style: GoogleFonts.ptSans(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.w700
                                                  )
                                                ),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),

                            const SizedBox(height: 16),

                            Offstage(
                              offstage: _message.isEmpty,
                              child: Text(
                                _message,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      color: Colors.red,
                                    )),
                              ),
                            ),

                            const SizedBox(height: 16),

                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    height: 56.0,
                                    color: (_username.isNotEmpty && _password.isNotEmpty) ? Colors.black : Colors.grey,
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: (_username.isNotEmpty && _password.isNotEmpty) ? () async {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                                        } : null,
                                        child: Center(
                                          child: Text(
                                            "CONTINUER",
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
                            Container(
                                margin: const EdgeInsets.only(top: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: 'Mot de passe oublié ? ',
                                          style: GoogleFonts.ptSans(
                                              color: Colors.grey),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Rénitialiser',
                                              style: GoogleFonts.ptSans(color: Colors.redAccent),
                                              recognizer:
                                              TapGestureRecognizer()
                                                ..onTap = () async {},
                                            )
                                          ]),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Version 4.23.3 - ',
                              style: GoogleFonts.ptSans(
                                  color: Colors.grey, fontSize: 13.0),
                              children: const <TextSpan>[
                                // TextSpan(
                                //   text: 'Sthic Congo',
                                //   style: GoogleFonts.ptSans(
                                //       color: const Color.fromARGB(255, 0, 109, 217)),
                                //   recognizer: TapGestureRecognizer()
                                //     ..onTap = () async {
                                //       if (await canLaunchUrl(
                                //           Uri.parse('https://sthic-congo.com/'))) {
                                //         await launchUrl(
                                //             Uri.parse('https://sthic-congo.com/'));
                                //       } else {
                                //         throw 'Could not launch https://sthic-congo.com/';
                                //       }
                                //     },
                                // ),
                              ]),
                        ),
                        const SizedBox(height: 2.0),
                        RichText(
                          text: TextSpan(
                              text: 'Propulsé par ',
                              style: GoogleFonts.ptSans(
                                  color: Colors.grey, fontSize: 13.0),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Neoris Digital',
                                  style: GoogleFonts.ptSans(color: Colors.redAccent),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      if (await canLaunchUrl(Uri.parse(
                                          'https://obriconsulting.com'))) {
                                        await launchUrl(Uri.parse(
                                            'https://obriconsulting.com'));
                                      } else {
                                        throw 'Could not launch https://obriconsulting.com';
                                      }
                                    },
                                ),
                                const TextSpan(
                                  text: ' © 2023',
                                )
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]
      ),
    );
  }
}