import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/widget/app_bar_custom_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'BEM \nVINDO(A)!',
        ),
      ),
      body: Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Text(
                    'É muito bom ter você por aqui! Sabia que o sono do bebê é essencial para o seu desenvolvimento? \nTer uma rotina de sono é de grande importancia para toda a família.',
                    maxLines: 10,
                    style: TextStyle(fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
                  ),
            SizedBox(height: 30),
              Text(
                'Novidades da semana:',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 30),
              ),
                ],
              ), ),
      ),

    );
  }
}
