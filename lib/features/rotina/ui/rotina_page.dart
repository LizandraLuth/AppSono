import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/colors_utils.dart';
import 'package:rotina_sono/config/utils/widget/page_custom_widget.dart';

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
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'ROTINA',
        ),
      ),
      body: PageCustomWidget(widgets: SingleChildScrollView(
          padding: EdgeInsets.all(24), child: _bodyBuild()),),
    );
  }

  Widget _bodyBuild() {
    return Column(children: [
      _title(
        imagemPrimeiro: true,
        title: 'Brincadeiras tranquilas',
        image: Image.asset(
          'assets/images/bebebrincando.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Antes de começar a rotina de sono, reserve um tempo para brincar com o bebê de forma tranquila e suave. Escolha brinquedos ou atividades que não sejam muito estimulantes, como brincar com bichinhos de pelúcia, explorar texturas suaves ou cantarolar canções de brincadeira. Essas atividades podem ajudar o bebê a relaxar e se preparar para o sono.'),
      _title(
        imagemPrimeiro: false,
        title: 'Diminuição da luz ambiente da casa',
        image: Image.asset(
          'assets/images/baby_nine.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'À medida que se aproxima a hora de dormir, comece a diminuir gradualmente a luz ambiente da casa. Feche cortinas ou persianas para reduzir a entrada de luz externa. A diminuição da luz ajuda a sinalizar ao corpo do bebê que está chegando a hora de dormir.'),
      _title(
        imagemPrimeiro: true,
        title: 'Massagem relaxante',
        image: Image.asset(
          'assets/images/baby_eigth.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Após as brincadeiras tranquilas e a diminuição da luz ambiente, realize a massagem relaxante no bebê. Utilize óleos ou loções de bebê adequados para a pele sensível. Faça movimentos suaves e rítmicos, massageando suavemente os braços, pernas, costas e barriga do bebê. A massagem ajuda a relaxar os músculos e prepara o bebê para o sono.'),
      _title(
        imagemPrimeiro: false,
        title: 'Banho tranquilo',
        image: Image.asset(
          'assets/images/babybanho.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Após a massagem, leve o bebê para um banho morno e tranquilo. Use produtos de banho suaves e agradáveis para a pele do bebê. Durante o banho, mantenha um ambiente calmo, falando suavemente com o bebê.'),
      _title(
        imagemPrimeiro: true,
        title: 'Troca de fralda e pijama',
        image: Image.asset(
          'assets/images/baby_seven.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Após o banho, seque delicadamente o bebê e faça a troca de fralda. Vista-o com um pijama confortável, garantindo que esteja seco e aquecido.'),
      _title(
        imagemPrimeiro: false,
        title: 'Ambiente tranquilo',
        image: Image.asset(
          'assets/images/baby_three.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Prepare o quarto do bebê para um ambiente tranquilo e relaxante. Reduza as luzes e o ruído ao mínimo possível. Use uma luz noturna suave ou uma lâmpada de baixa intensidade para proporcionar uma iluminação suave e reconfortante.'),
      _title(
        imagemPrimeiro: true,
        title: 'Amamentação ou mamadeira',
        image: Image.asset(
          'assets/images/amamentacao.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Ofereça uma amamentação tranquila e relaxante. Mantenha um ambiente calmo durante a amamentação, criando um espaço aconchegante e confortável para você e o bebê'),
      _title(
        imagemPrimeiro: false,
        title: 'Canção de ninar',
        image: Image.asset(
          'assets/images/music.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Após a amamentação ou mamadeira, acalme o bebê com uma canção de ninar suave. Cante em um tom calmo e baixo, embalando o bebê nos braços ou balançando-o gentilmente. Além disso, você pode reproduzir um ruído branco suave, como o som de uma máquina de ruído branco, ventilador ou aplicativo de ruídos calmantes, para criar um ambiente sonoro relaxante.'),
      _title(
        imagemPrimeiro: true,
        title: 'Tempo de leitura',
        image: Image.asset(
          'assets/images/baby_nine.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Após a canção de ninar, você pode ler uma história curta ou contar uma história suave para o bebê. Escolha livros com ilustrações suaves e adequados para a idade do bebê.'),
      _title(
        imagemPrimeiro: false,
        title: 'Colocando no berço',
        image: Image.asset(
          'assets/images/baby_two.png',
          height: 100,
          width: 100,
        ),
      ),
      _description(
          text:
              'Coloque o bebê no berço cuidadosamente para não acorda-lo. Certifique-se de que o berço esteja seguro e confortável, sem riscos de sufocamento.'),
      SizedBox(height: 10),
      Text(
        'Lembre-se de que cada bebê é único, e você pode adaptar essa rotina de sono de acordo com as preferências do seu bebê. O importante é criar um ambiente tranquilo e relaxante antes de colocá-lo para dormir, proporcionando um ambiente seguro e amoroso.',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontStyle: FontStyle.italic,fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
            fontSize: 15,
            color: ColorsUtil.purpleOne),
      )
    ]);
  }

  Widget _title(
      {required String title,
      required Image image,
      required bool imagemPrimeiro}) {
    return Row(
      children: [
        if (imagemPrimeiro) image,
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12),
            // color: colorText,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontFamily: 'Lato', fontSize: 20),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
        if (!imagemPrimeiro) image,
      ],
    );
  }

  Widget _description({
    required String text,
  }) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'Lato', fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
