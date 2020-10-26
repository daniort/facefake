import 'package:flutter/material.dart';

class BotonAppBar extends StatelessWidget {
  final IconData icon;
  final double size;
  final Function onPressed;

  const BotonAppBar({Key key, this.icon, this.size, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
          decoration:
              BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
          child: IconButton(
            icon: Icon(
              icon,
              size: size,
              color: Colors.black,
            ),
            onPressed: onPressed,
          )),
    );
  }
}
