import 'package:flutter/material.dart';

import '../colors_utils.dart';

class PageFullScreenCustomWidget extends StatefulWidget {
  const PageFullScreenCustomWidget({Key? key, required this.widgets})
      : super(key: key);

  final Widget widgets;

  @override
  State<PageFullScreenCustomWidget> createState() =>
      _PageFullScreenCustomWidgetState();
}

class _PageFullScreenCustomWidgetState
    extends State<PageFullScreenCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Positioned(
            bottom: -90,
            left: -90,
            child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: ColorsUtil.purpleBackground,
                    borderRadius: BorderRadius.circular(150)))),
        widget.widgets
      ],
    );
  }
}
