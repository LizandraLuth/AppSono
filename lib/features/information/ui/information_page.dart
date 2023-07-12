import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/colors_utils.dart';
import 'package:rotina_sono/features/information/ui/marcos_desenvolvimento_page.dart';
import 'package:rotina_sono/features/information/ui/rotina_sono_page.dart';
import 'package:rotina_sono/features/information/ui/vestir_bebe_page.dart';

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
      appBar: const PreferredSize(
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
      _card(
          title: 'O que é rotina de sono?',
          image: Image.asset('assets/images/baby_seven.png'),
          colorBackgroundImage: ColorsUtil.purpleOne,
          description:
              'Aprenda tudo o que vocë precisa saber sobre o sono do seu bebê.',
          colorText: ColorsUtil.blueFour,
          function: () async {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const RotinaSonoPage()));
          }),
      _card(
          title: 'Marcos de desenvolvimento',
          image: Image.asset('assets/images/baby_eigth.png'),
          colorBackgroundImage: ColorsUtil.purpleOne,
          description: 'Saiba em que fase de desenvolvimento seu filho está.',
          colorText: ColorsUtil.purpleFour,
          function: () async {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const MarcosDesenvolvimentoPage()));
          }),
      _card(
          title: 'Como vestir seu bebê?',
          image: Image.asset('assets/images/baby_nine.png'),
          colorBackgroundImage: ColorsUtil.purpleOne,
          description:
              'Veja como vestir o seu filho de acordo com a temperatura.',
          colorText: ColorsUtil.blueFour,
          function: () async {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const VestirBebePage()));
          })
    ]);
  }

  Widget _card(
      {required String title,
      required Image image,
      required Color colorBackgroundImage,
      required String description,
      required Color colorText,
      required Future<void> Function()? function}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 18),
      child: GestureDetector(
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: colorBackgroundImage,
                child: image,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
                  color: colorText,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontFamily: 'Lato', fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        description,
                        maxLines: 5,
                        style: TextStyle(fontFamily: 'Lato', fontSize: 13),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          onTap: function),
    );
  }
}
