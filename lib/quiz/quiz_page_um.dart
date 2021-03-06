import 'package:aprenda_ipv6/quiz/quiz_page_dois.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aprenda_ipv6/utils/nav.dart';

bool _allow = false;
class QuizUm extends StatelessWidget {
  static dynamic pontuacao=0; // Variável que recebe a pontuação para o quiz
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        return Future.value(_allow); // if true allow back else block it
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,// remove o botão de voltar no menu superior
          title: Text("Questão 1"),
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
                              "Quantos bits possui um endereço IPv6?",
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
                      style: ElevatedButton.styleFrom(onPrimary: Colors.red), //muda cor do botão ao clicar
                      onPressed: (){
                        push(context, QuizDois());
                      },
                      child: Text("32 bits",
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
                        push(context, QuizDois());
                      },
                      child: Text("64 bits",
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
                      style: ElevatedButton.styleFrom(onPrimary: Colors.green),
                      onPressed: (){
                        QuizUm.pontuacao+=1;
                        push(context, QuizDois());
                      },
                      child: Text("128 bits",
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

