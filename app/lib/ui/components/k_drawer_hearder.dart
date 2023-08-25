import 'package:app/ui/components/account_picture.dart';
import 'package:flutter/material.dart';

class KDrawerHeader extends StatelessWidget {
  const KDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Colors.red
      ),
      accountName: Text('Emilia DOREGO'),
      accountEmail: Text('AG0001 / Technicien'),
      currentAccountPicture: AccountPicture(),
    );
  }
}
