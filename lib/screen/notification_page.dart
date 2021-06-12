import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/const.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Notifikasi',
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 40),
        itemCount: 20,
        itemBuilder: (BuildContext ctxt, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom:12.0),
          child: NotificationRow(
            notif: 'Staf Desa menjawab laporan ' ,
            judul: 'Permohonan Perbaikan Jalan Rusak Di JL. H. Mustopa ',
            jam: '12.00',
            tanggal: '13 Juli 2021',
          ),
        );
        }
      ),
    );
  }
}

class NotificationRow extends StatelessWidget {
  final String jam;
  final String tanggal;
  final String notif;
  final String judul;
  const NotificationRow({
    this.notif,
    this.judul,
    this.jam,
    this.tanggal,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      // height: 60,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: this.notif,
                style: Theme.of(context).textTheme.bodyText1,
                children:<TextSpan>[
                  TextSpan(
                    text: this.judul, style: TextStyle(fontWeight: FontWeight.bold) ,
                  ),
                  TextSpan(
                    text: 'Anda.',
                  )
                ]
              )
            ),
            Padding(padding: EdgeInsets.only(top:4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
            ),
            Padding(padding: EdgeInsets.only(bottom:12)),
          ],
        ),
      ),
    );
  }
}