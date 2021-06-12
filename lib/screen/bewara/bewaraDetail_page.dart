import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/button/rectangleButton.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:share/share.dart';

class BewaraDetailPage extends StatefulWidget {
  @override
  _BewaraDetailPageState createState() => _BewaraDetailPageState();
}

class _BewaraDetailPageState extends State<BewaraDetailPage> {
  String text = 'Coba Lihat Bewara Desa Purwasari tentang ';
 
  share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    Share.share(text,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Bewara Desa',
        textColor: Colors.black,
        iconColor: Colors.black,
        rightTools: RectangleButton(
          onPressed: () { share(context); },
          height: 40,
          width: 40,
          icon: FontAwesomeIcons.shareAlt,
          iconColor: Colors.black,
          size: 18,
          color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 50.0),
          child: AppCard(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Staff Desa',
                                style: TextStyle(
                                    fontFamily: 'MontserratBold',
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(right: 4)),
                              FaIcon(FontAwesomeIcons.solidCheckCircle,
                              color: PurwasariAppPalette.green,
                              size: 12)
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top:2)),
                          Row(
                            children: [
                              Text(
                                "12.00",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.black87,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: FaIcon(
                                  FontAwesomeIcons.solidCircle,
                                  size: 6,
                                  color: Colors.black45,
                                ),
                              ),
                              Text(
                                "13 Juli 2021",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text('Tata Cara Penggunaan Aplikasi Pelayanan Desa Purwasari',
                      style: Theme.of(context).textTheme.headline1),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/pengumuman.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12)),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pharetra diam lectus, quis porta turpis facilisis et. Sed non tortor nec lorem tincidunt convallis. Integer sit amet diam venenatis, condimentum mi ac, venenatis orci. Sed eu eleifend nisl. Mauris maximus pulvinar quam et volutpat. Phasellus suscipit egestas convallis. Nunc eget libero in tellus cursus venenatis eu vitae ligula. Morbi quis sem sem. Fusce dictum ullamcorper elit quis congue. Phasellus libero augue, pharetra quis tempor ac, pulvinar vel velit. Sed eu dolor ut mi faucibus pretium. Vivamus nec lacinia leo, id iaculis tellus. Sed a odio ac neque viverra laoreet volutpat vitae odio. Nunc posuere dolor justo, vitae aliquam odio porta in. Ut id elementum turpis, nec porttitor tellus. Donec in arcu pellentesque, tincidunt odio vel, viverra nisl. Integer mattis urna ipsum, id rutrum risus condimentum vel. Nullam dictum urna vitae neque efficitur laoreet. Vivamus aliquam tortor est, in imperdiet diam pretium sed. Vivamus maximus venenatis ipsum, ullamcorper aliquet arcu hendrerit at. Morbi in velit rutrum, efficitur ex nec, viverra enim. Duis nibh velit, maximus ut tincidunt eu, luctus nec sem. Duis luctus malesuada nisi, at suscipit leo faucibus cursus. Mauris iaculis neque consectetur suscipit viverra. Suspendisse auctor in arcu sed mollis. Maecenas dapibus nibh dui, vel semper neque aliquam sed. Aliquam urna arcu, posuere volutpat molestie ac, porttitor eget ante. Quisque cursus, libero ac laoreet congue, libero enim malesuada justo, at congue nunc leo in nulla. Integer ultrices scelerisque nisi eu efficitur. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}