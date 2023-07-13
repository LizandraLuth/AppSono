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
      body: SingleChildScrollView(child: _bodyBuild()),
    );
  }

  _bodyBuild() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Text(
            'A rotina de sono para bebês é um conjunto de atividades e horários estabelecidos para promover um sono regular e saudável nos pequenos. Essa rotina é fundamental para ajudar os bebês a relaxarem, se sentirem seguros e terem um descanso adequado. ',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Sinais de Cansaço do Bebê',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'Cada criança terá a sua maneira de demonstrar para os pais que está com sono: muitos coçam o olhinho (ou a orelha), alguns bocejam e lacrimejam, enquanto outros ficam mais chorosos e irritados.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Hora Certa',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'O horário de dormir é importante para a saúde e bem-estar do bebê. A rotina de sono regular ajuda a estabelecer um padrão de sono saudável.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Banho',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'O banho é uma forma eficaz de relaxamento para os bebês, pois proporciona uma sensação de conforto e segurança.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Massagem',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'É importante para promover relaxamento, fortalecer o vínculo afetivo e aliviar desconfortos, contribuindo para um sono tranquilo e de qualidade.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Uma História',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'Contar histórias na rotina de sono do bebê ajuda a criar um ambiente calmo e estimula a imaginação, facilitando a transição para o sono.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Leite',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'Fornece nutrição adequada, promove a sensação de saciedade, ajuda a acalmar o bebê e facilita a indução ao sono.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Ambiente de sono',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'Um quarto escuro e silencioso ajuda a minimizar estímulos distrativos, permitindo que o bebê relaxe e adormeça mais facilmente, um ambiente propício ao sono do bebê ajuda a estabelecer um padrão de sono saudável e a promover um desenvolvimento adequado.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Ruído branco',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'Ajuda a mascarar outros sons, proporcionando um ambiente sonoro consistente e tranquilo, facilitando o relaxamento e a transição para o sono.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Ambiente Seguro',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          Text(
            'Certifique-se de que o berço do bebê esteja livre de objetos soltos, como travesseiros ou cobertores pesados, para garantir um ambiente seguro durante o sono.',
            style:
            TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
