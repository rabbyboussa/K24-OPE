import 'package:app/ui/components/k_drawer_hearder.dart';
import 'package:app/ui/pages/login_page.dart';
import 'package:app/ui/utils/k_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class KDrawer extends StatefulWidget {
  final Function updateSelectedDrawerMenuItem;

  const KDrawer({Key? key, required this.updateSelectedDrawerMenuItem}) : super(key: key);

  @override
  State<KDrawer> createState() => _KDrawerState();
}

class _KDrawerState extends State<KDrawer> {
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
    return Drawer(
      child: Column(
        children: [
          const KDrawerHeader(),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.dashboard_outlined),
                  title: Text('Tableau de bord', style: KStyle.kDrawerItemTextStyle,),
                  onTap: () => widget.updateSelectedDrawerMenuItem(0),
                ),
                ExpansionTile(
                  leading: const Icon(Icons.list_alt_sharp),
                  title: Text('Opérations', style: KStyle.kDrawerItemTextStyle),
                  childrenPadding: const EdgeInsets.only(left: 60),
                  children: [
                    ListTile(
                      title: const Text('Maintenance'),
                      onTap: () => widget.updateSelectedDrawerMenuItem(1),
                    ),
                    ListTile(
                      title: const Text('Intervention'),
                      onTap: () => widget.updateSelectedDrawerMenuItem(1),
                    ),
                    ListTile(
                      title: const Text('Installation'),
                      onTap: () => widget.updateSelectedDrawerMenuItem(1),
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Column(
              children: [
                const Divider(),
                ListTile(
                  dense: true,
                  leading: const Icon(FlutterIcons.comment_discussion_oct),
                  title: Text('Conversations', style: KStyle.kDrawerFooterItemTextStyle),
                  onTap: () => widget.updateSelectedDrawerMenuItem(2),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.notifications_none_sharp),
                  title: Text('Notifications', style: KStyle.kDrawerFooterItemTextStyle),
                  onTap: () => widget.updateSelectedDrawerMenuItem(3),
                ),
                AboutListTile(
                  dense: true,
                  icon: const Icon(Icons.info_outline),
                  applicationName: 'K24 OPE',
                  applicationVersion: '1.0.0',
                  applicationLegalese: '© 2023 Neoris Digital',
                  child: Text('À propos', style: KStyle.kDrawerFooterItemTextStyle),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.logout_sharp),
                  title: Text('Se déconnecter', style: KStyle.kDrawerFooterItemTextStyle),
                  onTap: () {
                    Navigator.of(context).pop();
                    showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Se déconnecter'),
                        content: const Text(
                          'Êtes-vous sûr de vouloir vous déconnecter ?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('NON'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                            },
                            child: const Text('OUI'),
                          )
                        ],
                      );
                    }
                  );
                  },
                ),
                const SizedBox(height: 16)
              ],
            ),
          )
        ],
      ),
    );
  }
}