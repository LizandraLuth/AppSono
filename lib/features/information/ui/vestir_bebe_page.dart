import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/widget/page_custom_widget.dart';

import '../../../config/utils/widget/app_bar_custom_widget.dart';
class VestirBebePage extends StatefulWidget {
  const VestirBebePage({Key? key}) : super(key: key);

  @override
  State<VestirBebePage> createState() => _VestirBebePageState();
}

class _VestirBebePageState extends State<VestirBebePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'Como vestir o bebê conforme a temperatura',
        ),
      ),
      body: PageCustomWidget(widgets: SingleChildScrollView(child: _bodyBuild()),),
    );
  }
  _bodyBuild(){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Text('O Brasil é um país tropical e as temperaturas sofrem oscilações constantes, independente da estação. Saiba o que usar no seu bebê em cada clima.',
            style: TextStyle(
                fontFamily: 'Lato', fontSize: 20, color: Colors.grey
            ),),SizedBox(height: 30),
          Image.asset('assets/images/bebevestir.png'),
 ],
      ),);

  }
}