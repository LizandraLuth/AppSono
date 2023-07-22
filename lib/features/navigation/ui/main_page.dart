import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/colors_utils.dart';
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
            unselectedItemColor: Colors.black38,
            selectedItemColor: ColorsUtil.purpleOne,
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
                  icon: Image.asset(
                    'assets/images/icon_home.png',color: Colors.black38,
                    width: 28,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/icon_home.png',color: ColorsUtil.purpleOne,
                    width: 32,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/icon_informations.png',color: Colors.black38,
                    width: 28,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/icon_informations.png',color: ColorsUtil.purpleOne,
                    width: 32,
                  ),
                  label: 'Informações'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/icon_moon.png',color: Colors.black38,
                    width: 28,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/icon_moon.png',color: ColorsUtil.purpleOne,
                    width: 32,
                  ),
                  label: 'Rotina'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/icon_doubts.png',color: Colors.black38,
                    width: 28,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/icon_doubts.png',color: ColorsUtil.purpleOne,
                    width: 32,
                  ),
                  label: 'Dúvidas')
            ]));
  }
}
