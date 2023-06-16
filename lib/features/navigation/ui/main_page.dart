import 'package:flutter/material.dart';
import 'package:rotina_sono/features/dubts/ui/dubts_page.dart';
import 'package:rotina_sono/features/home/ui/homes_page.dart';
import 'package:rotina_sono/features/information/ui/information_page.dart';
import 'package:rotina_sono/features/rotina/ui/rotina_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

final List<Widget> _telas = [
  HomePage(),
  InformationPage(),
  RotinaPage(),
  DubtsPage(),
];

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _telas[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                print(index);
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.grey),
                activeIcon: Icon(Icons.home, color: Colors.purple),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.medical_information,
                    color: Colors.grey,
                  ),
                  activeIcon:
                      Icon(Icons.medical_information, color: Colors.purple),
                  label: 'Informações'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(Icons.timer, color: Colors.purple),
                  label: 'Rotina'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.question_answer,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(Icons.question_answer, color: Colors.purple),
                  label: 'Dúvidas')
            ]));
  }
}
