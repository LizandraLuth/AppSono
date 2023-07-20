import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/widget/page_custom_widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../config/utils/widget/app_bar_custom_widget.dart';

class MarcosDesenvolvimentoPage extends StatefulWidget {
  const MarcosDesenvolvimentoPage({Key? key}) : super(key: key);

  @override
  State<MarcosDesenvolvimentoPage> createState() =>
      _MarcosDesenvolvimentoPageState();
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
      body: PageCustomWidget(
        widgets: SingleChildScrollView(child: _bodyBuild()),
      ),
    );
  }

  _bodyBuild() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Text(
            'Os marcos do desenvolvimento são um conjunto de habilidades que a maioria das crianças atinge em uma determinada idade. Os marcos ajudam pais, médicos e professores a perceber quando o desenvolvimento da criança não está acompanhado o esperado.',
            style:
                TextStyle(fontFamily: 'Lato', fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Text(
            'Tabela de marcos de desenvolvimento',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
          ),
          SizedBox(height: 30),
          TimelineTile(isFirst: true,
            alignment: TimelineAlign.center,
            axis: TimelineAxis.vertical,
            endChild: _title(text: 'Recém-nascido (0 a 3 meses)'),
            startChild: _desciption(
                text:
                    '• Levanta a cabeça brevemente.\n • Observa e reage a sons.\n• Segue objetos com os olhos.\n• Agarra objetos brevemente.\n• Sorri em resposta.'),
          ),
          TimelineTile(
            alignment: TimelineAlign.center,
            axis: TimelineAxis.vertical,
            startChild: _title(text: '3 meses'),
            endChild: _desciption(
                text:
                    '• Ergue cabeça apoiado.\n • Alcança objetos intencionalmente.\n• Balbucia e emite sons.'),
          ),
          TimelineTile(
            alignment: TimelineAlign.center,
            axis: TimelineAxis.vertical,
            endChild: _title(text: '6 meses'),
            startChild: _desciption(
                text:
                    '• Senta-se com apoio.\n • Rola e engatinha.\n• Segura e manipula objetos.'),
          ),
          TimelineTile(
            alignment: TimelineAlign.center,
            axis: TimelineAxis.vertical,
            startChild: _title(text: '9 meses'),
            endChild: _desciption(
                text:
                    '• Senta-se sem apoio.\n • Rasteja ou engatinha.\n• Pega pequenos objetos.'),
          ),
          TimelineTile(
            alignment: TimelineAlign.center,
            axis: TimelineAxis.vertical,
            endChild: _title(text: '12 meses (1 ano)'),
            startChild: _desciption(
                text:
                    '• Dá primeiros passos.\n • Pronuncia palavras simples.\n• Imita gestos e sons.'),
          ),
          TimelineTile(
            alignment: TimelineAlign.center,
            axis: TimelineAxis.vertical,
            startChild: _title(text: '18 meses (1 ano e meio)'),
            endChild: _desciption(
                text:
                    '• Caminha com mais estabilidade.\n • Começa a subir escadas.\n• Usa algumas palavras simples.'),
          ),
          TimelineTile(
            alignment: TimelineAlign.center,
            axis: TimelineAxis.vertical,
            endChild: _title(text: '2 anos'),
            startChild: _desciption(
                text:
                    '• Corre e pula coordenadamente.\n • Usa frases curtas.\n• Começa a usar banheiro.\n• Imita ações cotidianas.'),isLast: true,

          ),
        ],
      ),
    );
  }

  Widget _title({required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _desciption({required String text}) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Text(text,
            style: const TextStyle(
                fontFamily: 'Lato', fontSize: 12, color: Colors.grey)));
  }
}
