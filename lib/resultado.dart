import 'package:flutter/material.dart';
import 'package:cara_ou_coroa/game.dart';

class resultado extends StatefulWidget {
  const resultado({Key? key}) : super(key: key);

  @override
  State<resultado> createState() => _resultadoState();
}

class _resultadoState extends State<resultado> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Image.asset("iamges/"),
            GestureDetector(
              onTap: Navigator.pop(contex),
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
