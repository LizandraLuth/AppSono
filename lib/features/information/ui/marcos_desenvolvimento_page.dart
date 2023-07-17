import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/widget/page_custom_widget.dart';

import '../../../config/utils/widget/app_bar_custom_widget.dart';
class MarcosDesenvolvimentoPage extends StatefulWidget {
  const MarcosDesenvolvimentoPage({Key? key}) : super(key: key);

  @override
  State<MarcosDesenvolvimentoPage> createState() => _MarcosDesenvolvimentoPageState();
}

class _MarcosDesenvolvimentoPageState extends State<MarcosDesenvolvimentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'O que são \nmarcos de desenvolvimento??',
        ),
      ),
      body: PageCustomWidget(widgets: SingleChildScrollView(child: _bodyBuild()),),
    );
  }
  _bodyBuild(){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Text('Os marcos do desenvolvimento são um conjunto de habilidades que a maioria das crianças atinge em uma determinada idade. Os marcos ajudam pais, médicos e professores a perceber quando o desenvolvimento da criança não está acompanhado o esperado.',
            style: TextStyle(
                fontFamily: 'Lato', fontSize: 20, color: Colors.grey
            ),),SizedBox(height: 30),
          Text('Tabela de marcos de desenvolvimento', style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 25, color: Colors.black
          ),),SizedBox(height: 30),Image.asset('assets/images/tabelamarcos.jpg'),
        ],
      ),);

  }
}

