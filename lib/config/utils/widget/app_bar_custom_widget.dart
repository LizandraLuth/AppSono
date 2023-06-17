import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({ required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size(30, 250),
        child: Padding(
            padding: const EdgeInsets.only(top: 90, bottom: 30, left: 50),
            child: Text(
              title,
              style: const TextStyle(fontFamily: 'Montserrat', fontSize: 36),
            ))
    );
  }
}
