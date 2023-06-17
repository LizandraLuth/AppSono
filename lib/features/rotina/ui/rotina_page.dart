import 'package:flutter/material.dart';

import '../../../config/utils/widget/app_bar_custom_widget.dart';


class RotinaPage extends StatefulWidget {
  const RotinaPage({super.key});

  @override
  State<RotinaPage> createState() => _RotinaPage();
}

class _RotinaPage extends State<RotinaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'Rotina',
        ),
      ),
    );

  }
}