import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color iconColor;
  final Gradient gradient;
  final double height;
  final double width;
  final double iconSize;
  final String title;
  final IconData icon;
  final Widget child;
  final BoxShadow shadow;
  final Function onPress;
  final Alignment iconAlignment;
  final EdgeInsetsGeometry padding;
  const MainButton(
      {this.onPress,
      this.title,
      this.iconSize,
      this.icon,
      this.color,
      this.textColor,
      this.iconColor,
      this.iconAlignment,
      this.gradient,
      this.shadow,
      this.height,
      this.width,
      this.child,
      this.padding,
      Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: gradient,
        boxShadow: [this.shadow],
        borderRadius: BorderRadius.circular(10),
        color: this.color,
      ),
      width: this.width,
      height: this.height,
      child: FlatButton(
        padding:
            this.padding ?? EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        onPressed: this.onPress,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                this.title,
                style: TextStyle(
                    fontFamily: 'MontserratBold',
                    fontSize: 12,
                    color: this.textColor),
              ),
            ),
            this.icon != null
                ? Align(
                    alignment: this.iconAlignment,
                    child: Icon(this.icon,
                        size: this.iconSize ?? 15, color: this.iconColor),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
