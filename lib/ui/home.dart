import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
