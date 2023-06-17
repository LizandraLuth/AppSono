import 'package:flutter/material.dart';

import '../../../config/utils/widget/app_bar_custom_widget.dart';


class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'INFORMAÇÕES',
        ),
      ),
    );

  }
}
