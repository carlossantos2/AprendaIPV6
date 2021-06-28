import 'package:aprenda_ipv6/quiz/quiz_page_um.dart';
import 'package:aprenda_ipv6/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


final String titulo = 'Transição';

class VideoTres extends StatefulWidget {
  VideoTres({required this.title});
  final String title;
  @override
  _VideoTresState createState() => _VideoTresState();
}

class _VideoTresState extends State<VideoTres> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'dRIOPyf6Tx8',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop: true,
      ),
    );
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext){
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player){
          return Scaffold(
              appBar: AppBar(
                title: Text(widget.title),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  player,
                  SizedBox(height: 40.0),
                  Text('Precione o play para iniciar')
                ],
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.arrow_forward_outlined),
                onPressed: (){
                  deactivate();
                  push(context, QuizUm());//titulo é uma variável que recebe o título da página
                },
              )
          );
        }
    );
  }
}