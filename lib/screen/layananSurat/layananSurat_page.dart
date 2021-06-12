import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/card/purwasariCard.dart';
import 'package:purwasari_frontend/const.dart';

class LayananSuratPage extends StatefulWidget {
  const LayananSuratPage({ Key, key }) : super(key: key);

  @override
  _LayananSuratPageState createState() => _LayananSuratPageState();
}

class _LayananSuratPageState extends State<LayananSuratPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Layanan Surat',
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10, left: 24, right: 24),
        children: [
          PurwasariCard(
            color: Colors.black26,
            icon: FontAwesomeIcons.envelopeOpenText,
            title: '500/102/Ekbang 2021',
          ),
          Padding(padding: EdgeInsets.only(bottom: 12)),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, suratViewPageRoute);
            },
            child: PurwasariCard(
              color: PurwasariAppPalette.green,
              icon: FontAwesomeIcons.envelopeOpenText,
              title: '500/78/Ekbang 2021',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
              Navigator.pushNamed(context, suratCreatePageRoute);
        },
        backgroundColor: PurwasariAppPalette.orange,
        icon: FaIcon(
          FontAwesomeIcons.plus,
          size: 12,
          color: Colors.white,
        ),
        label: Text("Buat Surat",
          style: TextStyle(
            fontFamily: 'MontserratBold',
            fontSize: 12,
            color: Colors.white
          ),
        ),
     )
    );
  }
}