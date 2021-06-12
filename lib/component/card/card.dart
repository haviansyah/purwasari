import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final Widget child;
  final Gradient gradient;
  final BorderRadius borderRadius;

  const AppCard(
      {this.color,
      this.height,
      this.width,
      this.child,
      this.gradient,
      this.borderRadius,
      Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        boxShadow: [
          new BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.11),
              offset: new Offset(0, 3),
              blurRadius: 6)
        ],
        borderRadius:
            this.borderRadius ?? BorderRadius.all(Radius.circular(10)),
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
