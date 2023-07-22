import 'package:flutter/material.dart';
import 'package:rotina_sono/config/utils/widget/app_bar_custom_widget.dart';
import 'package:rotina_sono/config/utils/widget/page_custom_widget.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late YoutubePlayerController _controler;

  @override
  void dispose() {
    _controler.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controler = YoutubePlayerController(
      initialVideoId: 'sNclzkB3HeM?controls=0',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarCustom(
          title: 'BEM \nVINDO(A)!',
        ),
      ),
      body: PageCustomWidget(
          widgets: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Text(
                'É muito bom ter você por aqui! Sabia que o sono do bebê é essencial para o seu desenvolvimento? \nTer uma rotina de sono é de grande importancia para toda a família.',
                maxLines: 10,
                style: TextStyle(
                    fontFamily: 'Lato', fontSize: 20, color: Colors.grey),
              ),
              SizedBox(height: 32),
              Text(
                'Confira o vídeo:',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 30),
              ),
              SizedBox(height: 18),
              YoutubePlayer(controller: _controler,
              )
            ],
          ),
        ),
      )),
    );
  }
}
