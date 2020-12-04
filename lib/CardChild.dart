import 'package:flutter/material.dart';

import 'constantes.dart';

class CardChild extends StatelessWidget {
  CardChild({@required this.myIcon, @required this.myText, this.myColor});

  final IconData myIcon;
  final String myText;
  final Color myColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 80.0,
          color: myColor,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          myText,
          style: kMyStyleText,
        ),
      ],
    );
  }
}
