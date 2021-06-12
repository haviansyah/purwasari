import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/card/card.dart';

class TabelListTwo extends StatelessWidget {
  final String title;
  final String qty;
  final TextAlign textAlign;
  const TabelListTwo({
    this.title,
    this.qty,
    this.textAlign,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 235,
              child: Text(this.title,
                style: Theme.of(context).textTheme.bodyText1
              ),
            ),
            Expanded(
              child: Text(this.qty,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: this.textAlign == null ? TextAlign.right : this.textAlign,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TabelListThree extends StatelessWidget {
  final String title;
  final String qty1;
  final String qty2;
  const TabelListThree({
    this.title,
    this.qty1,
    this.qty2,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(this.title,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  color: Colors.black
                )
              ),
            ),
            Container(
              width: 70,
              child: Text(this.qty1,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(padding: EdgeInsets.only(right:4)),
            Container(
              width: 70,
              child: Text(this.qty2,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}