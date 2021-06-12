import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/card/card.dart';

class KadesCard extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String periode;
  const KadesCard({Key key, this.image, this.title, this.periode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
        height: 400,
        // width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 210,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: this.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10, bottom: 8),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:2)),
                  Text(this.title,
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontSize: 12,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:6)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Periode: ',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 11,
                        ),
                      ),
                      Text(this.periode,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}