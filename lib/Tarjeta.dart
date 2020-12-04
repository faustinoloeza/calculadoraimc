import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget {
  Tarjeta({
    @required this.initialColor,
    @required this.finalColor,
    this.myChild,
    this.onPress,
  });

  final Color initialColor;
  final Color finalColor;
  final Widget myChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              initialColor,
              finalColor,
            ],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: myChild,
      ),
    );
  }
}
