import 'package:flutter/material.dart';
import 'package:cara_ou_coroa/resultado.dart';
import 'dart:math';


class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {



  void _exibirResultado(){
    var _itens = ["Cara","Coroa"];
    var numero = Random().nextInt( _itens.length );
    var _resultado =  _itens[numero];
    Navigator.push(
        context, 
        MaterialPageRoute(
            builder: (context)=> resultado(_resultado)
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
             GestureDetector(
               onTap: _exibirResultado,
               child: Image.asset("images/botao_jogar.png"),
             )
          ],
        ),
      ),
    );
  }
}