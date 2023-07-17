import 'package:flutter/material.dart';

import '../colors_utils.dart';

class PageCustomWidget extends StatefulWidget {
  const PageCustomWidget({Key? key, required this.widgets}) : super(key: key);

  final Widget widgets;

  @override
  State<PageCustomWidget> createState() => _PageCustomWidgetState();
}

class _PageCustomWidgetState extends State<PageCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
