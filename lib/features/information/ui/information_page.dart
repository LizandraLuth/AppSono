import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/colors_utils.dart';

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
      body: _bodyBuild(),
    );
  }

  Widget _bodyBuild() {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 18),
        child: GestureDetector(
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset('imagem'),
              ),
              Expanded(
                child: Container( padding: EdgeInsets.all(12),
                  color: ColorsUtil.blueFour,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'O que é rotina de sono?',
                        style: TextStyle(fontFamily: 'Lato', fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Aprenda tudo o que vocë precisa saber sobre o sono do seu bebê.',
                        maxLines: 5,
                        style: TextStyle(fontFamily: 'Lato', fontSize: 13),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
