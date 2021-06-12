import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:purwasari_frontend/component/button/rectangleButton.dart';
import 'package:purwasari_frontend/const.dart';

class SuratViewPage extends StatefulWidget {
  const SuratViewPage({ Key, key }) : super(key: key);

  @override
  _SuratViewPageState createState() => _SuratViewPageState();
}

class _SuratViewPageState extends State<SuratViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: '500/78/Ekbang 2021',
        textColor: Colors.black,
        iconColor: Colors.black,
        rightTools: RectangleButton(
          icon: FontAwesomeIcons.download,
          iconColor: Colors.white,
          color: Color(0xff4DB3ED),
          size: 18,
          width: 40,
          height: 40,
        ),
      ),
      body: PDF.asset(
        'assets/example/contoh_sku.pdf',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        
      ),
    );
  }
}