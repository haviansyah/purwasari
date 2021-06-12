import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/card/purwasariCard.dart';
import 'package:purwasari_frontend/const.dart';

class ListSuratPage extends StatefulWidget {
  const ListSuratPage({ Key, key }) : super(key: key);

  @override
  _ListSuratPageState createState() => _ListSuratPageState();
}

class _ListSuratPageState extends State<ListSuratPage> {
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
            color: PurwasariAppPalette.green,
            icon: FontAwesomeIcons.envelopeOpenText,
            title: 'Surat Keterangan Penghasilan',
          ),
          Padding(padding: EdgeInsets.only(bottom: 12)),
          PurwasariCard(
            color: PurwasariAppPalette.lightBlue,
            icon: FontAwesomeIcons.envelopeOpenText,
            title: 'Surat Keterangan Domisili',
          ),
          Padding(padding: EdgeInsets.only(bottom: 12)),
          PurwasariCard(
            color: PurwasariAppPalette.pink,
            icon: FontAwesomeIcons.envelopeOpenText,
            title: 'Surat Keterangan Haji',
          ),
          Padding(padding: EdgeInsets.only(bottom: 12)),
          PurwasariCard(
            color: PurwasariAppPalette.orange,
            icon: FontAwesomeIcons.envelopeOpenText,
            title: 'Surat Keterangan Pindah',
          ),
          Padding(padding: EdgeInsets.only(bottom: 12)),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, layananSuratPageRoute);
            },
            child: PurwasariCard(
              color: PurwasariAppPalette.green,
              icon: FontAwesomeIcons.envelopeOpenText,
              title: 'Surat Keterangan Usaha',
            ),
          )
        ],
      ),
    );
  }
}