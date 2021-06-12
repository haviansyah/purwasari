import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

import 'package:purwasari_frontend/component/button/backButton.dart';

enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class AppBarCard extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final Widget child;
  const AppBarCard({this.color, this.height, this.width, this.child, Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        image: new DecorationImage(
          image: new AssetImage("assets/bg_appbar.png"),
          fit: BoxFit.cover,
        ),
        // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(17), bottomRight: Radius.circular(17)),
        boxShadow: [
          new BoxShadow(
            color: Color.fromRGBO(54, 159, 255, 0.39),
            offset: new Offset(0, 3),
            blurRadius: 6,
          )
        ],
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}

// IK APPBAR
class PurwasariAppBar extends PreferredSize {
  final String title;
  final Widget rightTools;
  final flexibleSpace;
  final bottom;
  final Color iconColor;
  final Color textColor;
  final Color color;
  const PurwasariAppBar(
      {Key key, 
      this.rightTools, 
      this.title, 
      this.bottom, 
      this.flexibleSpace,
      this.color,
      this.iconColor,
      this.textColor});
  Size get preferredSize => Size.fromHeight(this.bottom == null ? 60 : 100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: this.color!=null ? this.color : Colors.transparent,
      elevation: 0.0,
      leading: PurwasariBackButton(
        iconColor: this.iconColor,
      ),
      title: Row(
        children: [
          Text(
            this.title,
            style: TextStyle(
              fontFamily: 'MontserratBold',
              fontSize: 16,
              color: this.textColor,
            ),
          ),
          Spacer(),
          rightTools ?? Container()
        ],
      ),
      bottom: this.bottom,
      flexibleSpace: this.flexibleSpace,
    );
  }
}

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  const AppBarIcon({
    this.icon,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        height: 40,
        width: 40,
        child: IconButton(
            icon: FaIcon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            onPressed: onPressed));
  }
}
