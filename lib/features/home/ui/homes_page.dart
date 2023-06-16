import 'package:flutter/material.dart';

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
          child: Padding(
              padding: EdgeInsets.only(top: 90, bottom: 30, left: 50),
              child: Text(
                'BEM \nVINDO(A)!',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 36),
              )),
          preferredSize: Size(30, 250)),
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
