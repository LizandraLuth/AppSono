import 'package:flutter/material.dart';

import '../../../config/utils/widget/app_bar_custom_widget.dart';


class DubtsPage extends StatefulWidget {
  const DubtsPage({super.key});

  @override
  State<DubtsPage> createState() => _DubtsPage();
}

class _DubtsPage extends State<DubtsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'Dúvidas',
        ),
      ),
    );

  }
}
