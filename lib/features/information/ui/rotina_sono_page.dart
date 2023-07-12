import 'package:flutter/material.dart';

import '../../../config/utils/widget/app_bar_custom_widget.dart';

class RotinaSonoPage extends StatefulWidget {
  const RotinaSonoPage({Key? key}) : super(key: key);

  @override
  State<RotinaSonoPage> createState() => _RotinaSonoPageState();
}

class _RotinaSonoPageState extends State<RotinaSonoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'O que é rotina de sono?',
        ),
      ),
      body: _bodyBuild(),
    );
  }
  _bodyBuild(){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 50),
    child: Column(
      children: [
        Text('Mussum Ipsum, cacilds vidis litro abertis. /nSuco de cevadiss deixa as pessoas mais interessantis.',
          style: TextStyle(
              fontFamily: 'Lato', fontSize: 20, color: Colors.grey
          ),),SizedBox(height: 30),
        Text('Sinais de Cansaço do Bebê', style: TextStyle(
            fontFamily: 'Montserrat', fontSize: 25, color: Colors.black
        ),),SizedBox(height: 30),
        Text('Cada criança terá a sua maneira de demonstrar para os pais que está com sono: muitos coçam o olhinho (ou a orelha); alguns bocejam e lacrimejam; enquanto outros ficam mais chorosos e irritados.',
          style: TextStyle(
              fontFamily: 'Lato', fontSize: 20, color: Colors.grey
          ),),SizedBox(height: 30),
      ],
    ),);
  }
}

