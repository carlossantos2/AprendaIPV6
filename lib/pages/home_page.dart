import 'package:aprenda_ipv6/pages/video_um.dart';
import 'package:aprenda_ipv6/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatelessWidget {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introdução"),
        actions: <Widget>[
          IconButton(icon: Icon (Icons.refresh), onPressed: _onClickRefresh,)
        ],
      ),
      body: WebView(
        initialUrl: "https://ipv6.br/post/introducao/",
        onWebViewCreated: (controller){
          this.controller = controller;
      },
        javascriptMode: JavascriptMode.unrestricted,

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_outlined),
        onPressed:(){
         //push(context, VideoUm());
          push(context, VideoUm(title: titulo));//titulo é uma variável no arquivo video_um.dart
        },
      ),
    );
  }

  _onClickRefresh() {
    this.controller.reload();
  }
}
