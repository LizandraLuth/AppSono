import 'package:flutter/material.dart';

import '../../../config/utils/widget/app_bar_custom_widget.dart';
import 'package:rotina_sono/config/utils/colors_utils.dart';

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
          title: 'DÚVIDAS',
        ),
      ),
      body: SingleChildScrollView(child: _bodyBuild()),
    );
  }

  Widget _bodyBuild() {
    return Column(children: [
      _card(
        title: 'Quanto tempo um bebê deve dormir durante a noite? ?',
        description:
            'Geralmente, um bebê precisa dormir de 9 a 12 horas durante a noite.',

      ),
      _card(
        title: 'Quantos cochilos um bebê deve tirar durante o dia?',
        description:
            'A maioria dos bebês faz dois cochilos durante o dia, geralmente de manhã e à tarde.',

      ),_card(
        title: 'Quanto tempo deve durar um cochilo para um bebê?',
        description:
        'Os cochilos geralmente variam de 30 minutos a 2 horas, dependendo das necessidades individuais do bebê.',

      ),
      _card(
        title: 'Como estabelecer uma rotina de sono para um bebê?',
        description:
            'É importante estabelecer horários consistentes para dormir e acordar, além de criar uma rotina tranquila e relaxante antes de dormir.',

      ),
      _card(
        title: 'Como estabelecer uma rotina de sono para um bebê?',
        description:
        'É importante estabelecer horários consistentes para dormir e acordar, além de criar uma rotina tranquila e relaxante antes de dormir.',

      ),_card(
        title: 'O que fazer quando um bebê acorda durante a noite?',
        description:
        'Paciência é fundamental. É importante tentar acalmar o bebê sem estimulá-lo muito e ajudá-lo a voltar a dormir.',

      ),_card(
        title: 'Quais são alguns sinais de que um bebê está com sono?',
        description:
        'Ficar irritado, esfregar os olhos, bocejar e demonstrar falta de interesse em brincar podem ser sinais de que o bebê está com sono.',

      ),_card(
        title: 'Devo deixar um bebê dormir no meu quarto',
        description:
        'A Academia Americana de Pediatria recomenda que o bebê durma no mesmo quarto dos pais, mas em seu próprio berço, pelo menos nos primeiros seis meses.',

      ),_card(
        title: 'Como criar um ambiente adequado para o sono de um bebê?',
        description:
        'O quarto deve ser escuro, tranquilo e com uma temperatura agradável. Um ambiente seguro e confortável é essencial.',

      ),
      _card(
        title: 'O que fazer quando um bebê está lutando contra o sono?',
        description:
        'É importante seguir uma rotina consistente e ajudar o bebê a relaxar antes de dormir, com atividades calmas e reconfortantes, como um banho morno ou uma história tranquila.',

      ),
    ]);
  }

  Widget _card(
      {required String title,
      required String description,
      }) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 20, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                  fontFamily: 'Lato', fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
