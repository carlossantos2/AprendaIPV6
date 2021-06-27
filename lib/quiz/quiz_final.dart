import 'package:aprenda_ipv6/pages/home_page.dart';
import 'package:aprenda_ipv6/quiz/quiz_page_um.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aprenda_ipv6/utils/nav.dart';
import 'package:flutter/services.dart';

class Resultado extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,// remove o botão de voltar no menu superior
        title: Text("Resultado"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              color: Colors.white,
              child: Center(
                  child: Image.asset("assets/estude.png",
                    width: 400,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
              ),
            ),
            Container(
              height: 250,
              width: 400,
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: _texto(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                child: Text("Sair",
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                    ),
                ),
                  onPressed: (){
                    _zerarponto();
                    SystemNavigator.pop();
                  },
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  label: Text("Refazer",
                  style: TextStyle(
                    fontSize: 33,
                    color: Colors.white,
                  ),
                  ),
                  icon: Icon(Icons.autorenew),
                  onPressed: (){
                    _zerarponto();
                    push(context, Home());
                  },
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

_texto() {
  int nota=0;
  nota=QuizUm.pontuacao;
 if (nota>=7){
   return Text("Você se saiu muito bem, acertou $nota questões, Parabéns!",
       style: TextStyle(
         fontSize: 30,
         color: Colors.black,
         fontWeight: FontWeight.bold,
       ),
   );
 } else {
   return Text("Você não se saiu muito bem, acertou $nota questões. Revise o material "
       "e tente responder o questionário novamente.",
      style: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
   ),
   );
 }
}
_zerarponto(){
  return QuizUm.pontuacao=0;
}
