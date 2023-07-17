import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/widget/page_custom_widget.dart';

import '../../../config/utils/colors_utils.dart';
import '../../../config/utils/widget/app_bar_custom_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RotinaSonoPage extends StatefulWidget {
  const RotinaSonoPage({Key? key}) : super(key: key);

  @override
  State<RotinaSonoPage> createState() => _RotinaSonoPageState();
}

class _RotinaSonoPageState extends State<RotinaSonoPage> {
  @override
  void initState() {
    super.initState();
    _widgetsCarousel.add(_card(
      title: 'Hora Certa',
      description:
          'O horário de dormir é importante para a saúde e bem-estar do bebê. A rotina de sono regular ajuda a estabelecer um padrão de sono saudável.',
    ));
    _widgetsCarousel.add(_card(
      title: 'Banho',
      description:
          'O banho é uma forma eficaz de relaxamento para os bebês, pois proporciona uma sensação de conforto e segurança.',
    ));
    _widgetsCarousel.add(_card(
      title: 'Massagem',
      description:
          'É importante para promover relaxamento, fortalecer o vínculo afetivo e aliviar desconfortos, contribuindo para um sono tranquilo e de qualidade.',
    ));
    _widgetsCarousel.add(_card(
      title: 'Uma História',
      description:
          'Contar histórias na rotina de sono do bebê ajuda a criar um ambiente calmo e estimula a imaginação, facilitando a transição para o sono.',
    ));
    _widgetsCarousel.add(_card(
      title: 'Leite',
      description:
          'Fornece nutrição adequada, promove a sensação de saciedade, ajuda a acalmar o bebê e facilita a indução ao sono.',
    ));
    _widgetsCarousel.add(_card(
      title: 'Ambiente de sono',
      description:
          'Um quarto escuro e silencioso ajuda a minimizar estímulos distrativos, permitindo que o bebê relaxe e adormeça mais facilmente, um ambiente propício ao sono do bebê ajuda a estabelecer um padrão de sono saudável e a promover um desenvolvimento adequado.',
    ));
    _widgetsCarousel.add(_card(
      title: 'Ruído branco',
      description:
          'Ajuda a mascarar outros sons, proporcionando um ambiente sonoro consistente e tranquilo, facilitando o relaxamento e a transição para o sono.',
    ));
    _widgetsCarousel.add(_card(
      title: 'Ambiente Seguro',
      description:
          'Certifique-se de que o berço do bebê esteja livre de objetos soltos, como travesseiros ou cobertores pesados, para garantir um ambiente seguro durante o sono.',
    ));
  }

  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();
  final List<Widget> _widgetsCarousel = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: AppBarCustom(
            title: 'O que é rotina de sono?',
          ),
        ),
        body: PageCustomWidget(
          widgets: SingleChildScrollView(
            child: _bodyBuild(),
          ),
        ));
  }

  _bodyBuild() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(children: [
          Text(
            'A rotina de sono para bebês é um conjunto de atividades e horários estabelecidos para promover um sono regular e saudável nos pequenos. Essa rotina é fundamental para ajudar os bebês relaxarem, se sentirem seguros e terem um descanso adequado.',
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
          const SizedBox(height: 30),
          CarouselSlider(  carouselController: _carouselController,
            items: _widgetsCarousel,
            options: CarouselOptions(onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            }),
          ),
          DotsIndicator(
            dotsCount: _widgetsCarousel.length,
            position: _currentIndex,
            decorator: const DotsDecorator(
              color: Colors.grey,
              activeColor: ColorsUtil.bluetwo,
            ),
          ),          const SizedBox(height: 32),
        ]));
  }

  Widget _card({
    required String title,
    required String description,
  }) {
    return Container(
      color: Colors.white,

        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Montserrat', fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(
                  fontFamily: 'Lato', fontSize: 15, color: ColorsUtil.grey),
            ),
            const SizedBox(height: 28),
          ],
        ));
  }
}
