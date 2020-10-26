import 'package:flutter/material.dart';

class Reactions extends StatelessWidget {
  final IconData icon;
  final double size;
  final Function onPressed;
  final MaterialColor color;

  const Reactions({Key key, this.icon, this.size, this.onPressed, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
    );
  }
}
