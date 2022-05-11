import 'package:flutter/material.dart';

class resultado extends StatefulWidget {
  var Valor;
   resultado (this.Valor);

  @override
  State<resultado> createState() => _resultadoState();
}

class _resultadoState extends State<resultado> {
  @override
  Widget build(BuildContext context) {

      var caminhoImage ;

      if( widget.Valor == "Cara"){
        caminhoImage = "images/moeda_cara.png";
      }else{
        caminhoImage = "images/moeda_coroa.png";
      }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Image.asset(caminhoImage),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
                },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
