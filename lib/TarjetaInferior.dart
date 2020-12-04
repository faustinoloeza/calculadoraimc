import 'package:calbmi/constantes.dart';
import 'package:flutter/material.dart';

const double heigthLine = 80.0;

class TarjetaInferior extends StatelessWidget {
  TarjetaInferior({@required this.myChild});
  final Color colorInicial = myInitialColor;
  final Color colorFinal = myFinalColor;

  final Widget myChild;
  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: myChild,
      ),
    );
  }
}
