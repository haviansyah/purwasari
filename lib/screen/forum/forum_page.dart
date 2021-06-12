import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/card/forumCard.dart';
import 'package:purwasari_frontend/const.dart';

class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        iconColor: Colors.black,
        textColor: Colors.black,
        title: "Forum Desa"
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 12, left:24, right: 24),
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, forumDetailPageRoute);
            },
            child: ForumCardAnswered(
              nama: "Rahmat S.",
              tanggal: "13 Juli 2021",
              judul: "Permohonan Perbaikan Jalan Rusak Di JL. H. Mustopa",
              balasan: "12",
            ),
          ),
          Padding(padding: EdgeInsets.only(top:12)),
          ForumCard(
            nama: "Rahmat S.",
            tanggal: "13 Juli 2021",
            judul: "Permohonan Perbaikan Jalan Rusak Di JL. H. Mustopa",
            balasan: "12",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.pushNamed(context, forumCreatePageRoute);
        },
        backgroundColor: PurwasariAppPalette.orange,
        icon: FaIcon(
          FontAwesomeIcons.plus,
          size: 12,
          color: Colors.white,
        ),
        label: Text("Buat Forum",
          style: TextStyle(
            fontFamily: 'MontserratBold',
            fontSize: 12,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
