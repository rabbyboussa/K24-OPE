import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AccountPicture extends StatelessWidget {
  const AccountPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      maxRadius: 30,
      child: CircleAvatar(
        maxRadius: 32,
        backgroundImage: CachedNetworkImageProvider(
          'https://firebasestorage.googleapis.com/v0/b/cerello-81465.appspot.com/o/ouvriere-usine-contenu-debout-tablette-regardant-ailleurs.jpg?alt=media&token=c6405c9e-346c-4bad-9b06-bacc65054542',
        ),
      ),
    );
  }
}
