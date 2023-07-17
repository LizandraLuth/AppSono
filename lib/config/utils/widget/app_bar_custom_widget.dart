import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/colors_utils.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size(30, 250),
        child: Stack(
          children: [
            Positioned(
                top: -60,
                right: -60,
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: ColorsUtil.blueBackground,
                        borderRadius: BorderRadius.circular(100)))),
            _title()
          ],
        ));
  }

  Widget _title() {
    return Padding(
        padding: const EdgeInsets.only(top: 90, bottom: 30, left: 50),
        child: Text(
          title,
          style: const TextStyle(fontFamily: 'Montserrat', fontSize: 36),
        ));
  }
}
