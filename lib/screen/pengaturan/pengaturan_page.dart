import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/card/purwasariCard.dart';
import 'package:purwasari_frontend/const.dart';

class PengaturanPage extends StatefulWidget {
  @override
  _PengaturanPageState createState() => _PengaturanPageState();
}

class _PengaturanPageState extends State<PengaturanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Pengaturan Akun',
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 24, right: 24),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, ubahProfilPageRoute);
              },
              child: PurwasariCard(
                icon: FontAwesomeIcons.solidUser,
                color: PurwasariAppPalette.green,
                title: 'Ubah Profil',
              ),
            ),
            Padding(padding: EdgeInsets.only(top:12)),
            PurwasariCard(
              icon: FontAwesomeIcons.powerOff,
              color: PurwasariAppPalette.pink,
              title: 'Keluar',
            )
          ]
        ),
      ),
    );
  }
}