import 'package:flutter/material.dart';
import 'Tarjeta.dart';
import 'TarjetaInferior.dart';
import 'constantes.dart';

class Resultado extends StatelessWidget {
  Resultado({@required this.resultado, @required this.mensaje});

  final String resultado;
  final String mensaje;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Tarjeta(
                  initialColor: myInitialColor,
                  finalColor: myFinalColor,
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        mensaje,
                        style: kMyStyleTextBig,
                      ),
                      Text(
                        resultado,
                        style: kMyStyleTextBig,
                      ),
                    ],
                  ),
                ),
              ),
              TarjetaInferior(
                myText: "RE-CALCULAR",
                myFunction: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
