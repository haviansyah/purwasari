import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/card/kadesCard.dart';
import 'package:purwasari_frontend/const.dart';

class DaftarKadesPage extends StatefulWidget {
  @override
  _DaftarKadesPageState createState() => _DaftarKadesPageState();
}

class _DaftarKadesPageState extends State<DaftarKadesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Daftar Kepala Desa',
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
      body: GridView.count(
        padding: EdgeInsets.only(top: 10, left: 24, right: 24),
        childAspectRatio:  1.9/3,
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 16,
        children: [
          KadesCard(
            image: AssetImage('assets/kades/yusuf-mustofa.png'),
            title: 'Yusuf Mustofa',
            periode: 'I. 2014 - 2020 \nII. 2020 - Sekarang',

          ),
          KadesCard(
            image: AssetImage('assets/kades/indra.png'),
            title: 'Indra',
            periode: '2008 - 2014',

          ),
          KadesCard(
            image: AssetImage('assets/kades/abdul-manan.png'),
            title: 'Drs. H. Moch Sarnata',
            periode: '2000 - 2008',

          ),
          KadesCard(
            image: AssetImage('assets/kades/moch-sarnata.png'),
            title: 'Drs. H. Moch Sarnata',
            periode: 'I. 1984 - 1992 \nII. 1992 - 2000',

          )
        ],
      ),
    );
  }
}