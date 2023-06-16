import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rotina_sono/features/onboarding/ui/onboarding_page.dart';

import '../../home/ui/homes_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(milliseconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomePage())));

    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Rotina de sono'),
        //   backgroundColor: Colors.purple,
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Que bom que seu \nbebê tem você!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 25,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 48,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              SizedBox(
                height: 8,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
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
            ],
          ),
        )
        // backgroundColor: Color.fromARGB(1, 81, 69, 97),
        );
  }
}
