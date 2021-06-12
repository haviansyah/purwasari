import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RectangleButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color color;
  final double width;
  final double height;
  final double size;
  final Function onPressed;
  const RectangleButton({
    this.icon,
    this.iconColor,
    this.color,
    this.width,
    this.height,
    this.size,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        height: this.height,
        decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.all(Radius.circular(6)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  blurRadius: 6,
                  offset: new Offset(0, 3),
                  spreadRadius: 0),
            ]),
        child: IconButton(
          icon: FaIcon(
            this.icon,
            color: this.iconColor,
            size: this.size,
          ),
          onPressed: this.onPressed,
        ));
  }
}
