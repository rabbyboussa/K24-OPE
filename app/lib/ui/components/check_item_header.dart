import 'package:app/ui/components/item_state.dart';
import 'package:app/ui/components/item_title.dart';
import 'package:app/ui/pages/check_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckItemHeader extends StatelessWidget {
  const CheckItemHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: ItemTitle(title: '#1 - Etat tuyau d\'échappement et gaine (CTRL010095)')
              ),
              const SizedBox(width: 12),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CheckDetailsPage())),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12.0),
                      child: Text(
                        'Ouvrir  >',
                        style: GoogleFonts.ptSans(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: 'Résultat : ',
                  style: GoogleFonts.ptSans(color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Bon',
                      style: GoogleFonts.ptSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ]
                ),
              )
            ],
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: 'Observation : ',
                    style: GoogleFonts.ptSans(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'R.A.S.',
                        style: GoogleFonts.ptSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ]
                ),
              )
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ItemState(),
              Row(
                children: [
                  Badge(
                    backgroundColor: Colors.red,
                    label: const Text('2'),
                    child: Tooltip(
                      message: 'Photos',
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: const BorderRadius.all(Radius.circular(32)),
                            child: const Icon(
                              FlutterIcons.image_fea,
                              color: Colors.grey,
                              size: 18,
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
