import 'package:app/ui/pages/operation_activities_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConversationWidget extends StatefulWidget {
  const ConversationWidget({Key? key}) : super(key: key);

  @override
  State<ConversationWidget> createState() => _ConversationWidgetState();
}

class _ConversationWidgetState extends State<ConversationWidget> {
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
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OperationActivitiesPage())),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.red,
                  maxRadius: 24,
                  child: CircleAvatar(
                    maxRadius: 22,
                    backgroundImage: CachedNetworkImageProvider(
                      'https://firebasestorage.googleapis.com/v0/b/cerello-81465.appspot.com/o/rire-jeune-constructeur-afro-americain-uniforme-tenant-presse-papiers-isole-fond-bleu.jpg?alt=media&token=bb79f17e-9ac2-4ab0-a268-bbbc307a5926',
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Hier',
                            style: GoogleFonts.ptSans(
                              color: Colors.grey,
                              fontSize: 12
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Joachim MABANDZA',
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: Text(
                              'Salut Emilia, j\'ai passé en revue tes opérations exécutés cette semaine. Bon travail !',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: GoogleFonts.ptSans(
                                    color: Colors.white,
                                    fontSize: 13
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}