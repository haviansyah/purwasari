import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:purwasari_frontend/screen/potensiDesa/perikanan_fragment.dart';
import 'package:purwasari_frontend/screen/potensiDesa/perkebunan_fragment.dart';
import 'package:purwasari_frontend/screen/potensiDesa/pertanian_fragment.dart';

class PotensiDesaPage extends StatefulWidget {
  @override
  _PotensiDesaPageState createState() => _PotensiDesaPageState();
}

class _PotensiDesaPageState extends State<PotensiDesaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Sumber Daya dan Potensi',
        textColor:  Colors.black,
        iconColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.only(top:10, left:24, right:24, bottom: 40),
        children: [
          PertanianFragment(),
          Padding(padding: EdgeInsets.only(top:12)),
          PerkebunanFragment(),
          Padding(padding: EdgeInsets.only(top:12)),
          PerikananFragment(),
        ],
        ),
    );
  }
}