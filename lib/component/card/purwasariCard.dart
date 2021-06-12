import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/card/card.dart';

class PurwasariCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final EdgeInsets padding;
  final Function onTap;
  const PurwasariCard({
    Key key,
    this.title,
    this.color,
    this.icon,
    this.onTap,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      height: 60,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: this.color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Padding(
                  padding: this.padding,
                  child: FaIcon(
                    this.icon,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 12)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right:8.0),
                child: Text(
                  this.title,
                  style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Image.asset(imgPath),
      ),
    );
  }
}
