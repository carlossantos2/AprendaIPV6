import 'package:aprenda_ipv6/quiz/quiz_page_dez.dart';
import 'package:aprenda_ipv6/quiz/quiz_page_um.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aprenda_ipv6/utils/nav.dart';

bool _allow = false;
class QuizNove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        return Future.value(_allow); // if true allow back else block it
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,// remove o botão de voltar no menu superior
          title: Text("Questão 9"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .4,
                      width: 400,
                      color: Colors.cyan,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                              "Que técnica de transição possibilita que os dispositivos de rede"
                                  " enviem e recebam pacotes IPv4 e IPv6?",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: MediaQuery.of(context).size.height * .11,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(onPrimary: Colors.green
                      ), //muda cor do botão ao clicar
                      onPressed: (){
                        QuizUm.pontuacao+=1;
                        push(context, QuizDez());
                      },
                      child: Text("Pilha Dupla",
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: MediaQuery.of(context).size.height * .11,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(onPrimary: Colors.red),
                      onPressed: (){
                        push(context, QuizDez());
                      },
                      child: Text("Túneis",
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: MediaQuery.of(context).size.height * .11,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(onPrimary: Colors.red),
                      onPressed: (){
                        push(context, QuizDez());
                      },
                      child: Text("Tradução",
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          )
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}