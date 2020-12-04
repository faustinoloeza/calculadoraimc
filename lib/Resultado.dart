import 'package:flutter/material.dart';

import 'Tarjeta.dart';
import 'TarjetaInferior.dart';
import 'constantes.dart';

class Resultado extends StatelessWidget {
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
                        "NORMAL",
                        style: kMyStyleTextBig,
                      ),
                      Text(
                        "26.3",
                        style: kMyStyleTextBig,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: TarjetaInferior(
                  myChild: Text(
                    "RE-CALCULAR",
                    style: kMyStyleButtonCard,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
