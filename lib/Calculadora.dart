import 'package:calbmi/Resultado.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CardChild.dart';
import 'Tarjeta.dart';
import 'TarjetaInferior.dart';
import 'constantes.dart';
import 'MyIconButton.dart';
import 'Calculos.dart';

enum Gender {
  MALE,
  FEMALE,
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() {
    return _CalculadoraState();
  }
}

class _CalculadoraState extends State<Calculadora> {
  Gender myGender = Gender.MALE;
  int myAltura = 180;
  int pesoInicial = 75;
  int edadInicial = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("CALCULADORA IMC"),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Tarjeta(
                    onPress: () {
                      setState(() {
                        //changeColor(Gender.FEMALE);
                        myGender = Gender.MALE;
                      });
                    },
                    initialColor: myInitialColor,
                    finalColor: myFinalColor,
                    myChild: CardChild(
                        myIcon: FontAwesomeIcons.mars,
                        myText: "HOMBRE",
                        myColor: myGender == Gender.MALE
                            ? myActiveButonColor
                            : Colors.white),
                  ),
                ),
                Expanded(
                  child: Tarjeta(
                    onPress: () {
                      setState(() {
                        //changeColor(Gender.FEMALE);
                        myGender = Gender.FEMALE;
                      });
                    },
                    initialColor: myInitialColor,
                    finalColor: myFinalColor,
                    myChild: CardChild(
                        myIcon: FontAwesomeIcons.venus,
                        myText: "MUJER",
                        myColor: myGender == Gender.FEMALE
                            ? myActiveButonColor
                            : Colors.white),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Tarjeta(
                myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ALTURA",
                      style: kMyStyleText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          myAltura.toString(),
                          style: kMyStyleTextBig,
                        ),
                        Text(
                          "CM",
                          style: kMyStyleText,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 16.0,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: myAltura.toDouble(),
                        min: 50.0,
                        max: 220.0,
                        activeColor: myActiveButonColor,
                        inactiveColor: Colors.white,
                        label: myAltura.toString(),
                        onChanged: (double value) {
                          setState(() {
                            myAltura = value.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
                initialColor: myInitialColor,
                finalColor: myFinalColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Tarjeta(
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "PESO",
                            style: kMyStyleText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                pesoInicial.toString(),
                                style: kMyStyleTextBig,
                              ),
                              Text(
                                "KG",
                                style: kMyStyleText,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyIconButton(
                                myIconChild: FontAwesomeIcons.minus,
                                myFunction: () => {
                                  setState(() {
                                    if (pesoInicial > 0) {
                                      setState(() {
                                        pesoInicial--;
                                      });
                                    }
                                  }),
                                },
                              ),
                              SizedBox(width: 15.0),
                              MyIconButton(
                                myIconChild: FontAwesomeIcons.plus,
                                myFunction: () => {
                                  setState(() {
                                    if (pesoInicial < 300) {
                                      setState(() {
                                        pesoInicial++;
                                      });
                                    }
                                  }),
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      initialColor: myInitialColor,
                      finalColor: myFinalColor,
                    ),
                  ),
                  Expanded(
                    child: Tarjeta(
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "EDAD",
                            style: kMyStyleText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                edadInicial.toString(),
                                style: kMyStyleTextBig,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyIconButton(
                                myIconChild: FontAwesomeIcons.minus,
                                myFunction: () => {
                                  setState(() {
                                    if (edadInicial > 0) {
                                      setState(() {
                                        edadInicial--;
                                      });
                                    }
                                  }),
                                },
                              ),
                              SizedBox(width: 15.0),
                              MyIconButton(
                                myIconChild: FontAwesomeIcons.plus,
                                myFunction: () => {
                                  setState(() {
                                    if (edadInicial < 100) {
                                      setState(() {
                                        edadInicial++;
                                      });
                                    }
                                  }),
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      initialColor: myInitialColor,
                      finalColor: myFinalColor,
                    ),
                  ),
                ],
              ),
            ),
            TarjetaInferior(
              myText: "CALCULAR",
              myFunction: () {
                Calulos resultado = Calulos(
                  altura: myAltura,
                  peso: pesoInicial,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultado(
                      resultado: resultado.getIMC(),
                      mensaje: resultado.getStatus(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
