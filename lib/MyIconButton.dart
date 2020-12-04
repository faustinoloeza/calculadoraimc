import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyIconButton extends StatelessWidget {
  MyIconButton({@required this.myIconChild, @required this.myFunction});
  IconData myIconChild;
  Function myFunction;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: Colors.white,
      onPressed: myFunction,
      child: FaIcon(
        myIconChild,
        color: Color.fromARGB(200, 84, 51, 255),
      ),
    );
  }
}
