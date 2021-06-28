import 'package:aprenda_ipv6/pages/page_dois.dart';
import 'package:aprenda_ipv6/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


final String titulo = 'Endereços IPv6';

class VideoDois extends StatefulWidget {
  VideoDois({required this.title});
  final String title;
  @override
  _VideoDoisState createState() => _VideoDoisState();
}

class _VideoDoisState extends State<VideoDois> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: '63M61wttuMk',
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
                  push(context, PageDois());//titulo é uma variável que recebe o título da página
                },
              )
          );
        }
    );
  }
}