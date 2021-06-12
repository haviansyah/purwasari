import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:purwasari_frontend/screen/dataPenduduk/jenisPekerjaan_fragment.dart';
import 'package:purwasari_frontend/screen/dataPenduduk/jumlahPenduduk_fragment.dart';
import 'package:purwasari_frontend/screen/dataPenduduk/rentangUsia_fragment.dart';
import 'package:purwasari_frontend/screen/dataPenduduk/tingkatPendidikan_fragment.dart';

class DataPendudukPage extends StatefulWidget {
  @override
  _DataPendudukPageState createState() => _DataPendudukPageState();
}

class _DataPendudukPageState extends State<DataPendudukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Data Penduduk',
        textColor:  Colors.black,
        iconColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.only(top:10, left:24, right:24,bottom: 40),
        children: [
          JumlahPendudukFragment(),
          Padding(padding: EdgeInsets.only(top:20)),
          RentangUsiaFragment(),
          Padding(padding: EdgeInsets.only(top:20)),
          TingkatPendidikanFragment(),
          Padding(padding: EdgeInsets.only(top:20)),
          JenisPekerjaanFragment(),
        ],
        ),
    );
  }
}
