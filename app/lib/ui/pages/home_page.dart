import 'package:app/ui/components/k_drawer.dart';
import 'package:app/ui/pages/conversations_page.dart';
import 'package:app/ui/pages/dashboard_page.dart';
import 'package:app/ui/pages/notifications_page.dart';
import 'package:app/ui/pages/operations_page.dart';
import 'package:app/ui/pages/qr_code_scanner_page.dart';
import 'package:app/ui/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedDrawerMenuItem = 0;

  void updateSelectedDrawerMenuItem(int drawerMenuItem) {
    setState(() {
      selectedDrawerMenuItem = drawerMenuItem;
    });

    Navigator.of(context).pop();
  }

  List<Widget> pages = <Widget>[
    const DashboardPage(),
    const OperationsPage(),
    const ConversationsPage(),
    const NotificationsPage(),
  ];

  List<String> pagesTitles = <String>[
    'Tableau de bord',
    'Opérations',
    'Conversations',
    'Notifications',
  ];

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
        title: Text(pagesTitles[selectedDrawerMenuItem]),
        actions: selectedDrawerMenuItem == 1 ? [
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SearchPage())),
            tooltip: 'Rechercher',
            icon: const Icon(FlutterIcons.search1_ant)
          ),
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QRCodeScannerPage())),
            tooltip: 'Scanner un code QR',
            icon: const Icon(FlutterIcons.qrcode_scan_mco)
          )
        ] : null,
      ),
      drawer: KDrawer(updateSelectedDrawerMenuItem: updateSelectedDrawerMenuItem),
      body: pages[selectedDrawerMenuItem],
    );
  }
}