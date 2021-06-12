import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/tabel.dart';
import 'package:purwasari_frontend/const.dart';

class PerkebunanFragment extends StatefulWidget {
  @override
  _PerkebunanFragmentState createState() => _PerkebunanFragmentState();
}

class _PerkebunanFragmentState extends State<PerkebunanFragment> {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top:20, left:12, right: 12,),
        child: Column(
          children: [
          Text(
              'Subsektor Perkebunan',
              style: Theme.of(context).textTheme.headline1
          ),
          Padding(padding: EdgeInsets.only(top:20)),
          AppCard(
              color: PurwasariAppPalette.green,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text('Tanaman',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 12,
                          color: Colors.white
                        )
                      ),
                    ),
                    Container(
                      width: 70,
                      child: Text('Luas Produksi (Ha)',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 12,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right:4)),
                    Container(

                      width: 70,
                      child: Text('Hasil Produksi (Ton/Ha)',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 12,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top:12)),
            TabelListThree(
              title: 'Kelapa',
              qty1: '1',
              qty2: '3',
            ),
            Padding(padding: EdgeInsets.only(bottom: 12)),
         ],
        )
        
      ),
    );
  }
}
