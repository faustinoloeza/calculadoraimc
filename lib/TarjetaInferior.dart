import 'package:calbmi/constantes.dart';
import 'package:flutter/material.dart';

const double heigthLine = 80.0;

class TarjetaInferior extends StatelessWidget {
  TarjetaInferior({@required this.myText, this.myFunction});
  final Color colorInicial = myInitialColor;
  final Color colorFinal = myFinalColor;

  final String myText;
  final Function myFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunction,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colorInicial,
              colorFinal,
            ],
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        height: heigthLine,
        width: double.infinity,
        child: Center(
          child: Text(
            myText,
            style: kMyStyleButtonCard,
          ),
        ),
      ),
    );
  }
}
