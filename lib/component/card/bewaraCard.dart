import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/card/card.dart';

class BewaraCard extends StatelessWidget {
  final AssetImage image;
  final String title;
  const BewaraCard({Key key, this.image, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
        // height: 200,
        // width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: this.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10, bottom: 8),
                child: Text(this.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    fontFamily: 'MontserratMedium',
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.left,
                  ),
              ),
            )
          ],
        ));
  }
}
