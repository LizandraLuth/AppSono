import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rotina_sono/features/navigation/ui/main_page.dart';

import '../../../config/utils/widget/page__fullscreen_custom_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const MainPage())));

    return Scaffold(
        body: PageFullScreenCustomWidget(
      widgets: _buildBody(),
    ));
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Que bom que seu \nbebê tem você!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 25,
                color: Colors.black,
              )),
          const SizedBox(
            height: 48,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Parabéns!',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 45,
                    color: Colors.black,
                  )),
              SizedBox(
                width: 48,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Você está fazendo um \nótimo trabalho!',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 25,
                    color: Colors.black,
                  )),
              SizedBox(
                width: 48,
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          )
        ],
      ),
    );
  }
}
