import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/card/bewaraCard.dart';
import 'package:purwasari_frontend/const.dart';

class BewaraPage extends StatefulWidget {
  @override
  _BewaraPageState createState() => _BewaraPageState();
}

class _BewaraPageState extends State<BewaraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Bewara Desa',
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(left: 24.0, right: 24, bottom: 36),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2.4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        itemCount: 15, 
        itemBuilder: (BuildContext ctx, index){
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, bewaraDetailPageRoute);
            },
            child: BewaraCard(
              image: AssetImage("assets/pengumuman.png"),
              title: "Tutorial tata cara menggunakan aplikasi SISIHAN PURWASARI",
            ),
          );
        }
      ),
    );
  }
}