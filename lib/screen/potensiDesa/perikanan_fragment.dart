import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/tabel.dart';
import 'package:purwasari_frontend/const.dart';

class PerikananFragment extends StatefulWidget {
  @override
  _PerikananFragmentState createState() => _PerikananFragmentState();
}

class _PerikananFragmentState extends State<PerikananFragment> {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top:20, left:12, right: 12,),
        child: Column(
          children: [
          Text(
              'Subsektor Perikanan',
              style: Theme.of(context).textTheme.headline1
          ),
          Padding(padding: EdgeInsets.only(top:20)),
          AppCard(
            color: PurwasariAppPalette.green,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Jenis Ikan',
                      style: TextStyle(
                        fontFamily: 'MontserratMedium',
                        fontSize: 12,
                        color: Colors.white
                      )
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Text('Hasil Produksi (Ton/Tahun)',
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
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(padding: EdgeInsets.only(top:12)),
              TabelListTwo(
                title: 'Mas',
                qty: '7',
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.only(top:12)),
              TabelListTwo(
                title: 'Mujair',
                qty: '7',
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.only(top:12)),
              TabelListTwo(
                title: 'Lele',
                qty: '5',
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.only(top:12)),
              TabelListTwo(
                title: 'Gurame',
                qty: '6',
                textAlign: TextAlign.center,
              ),
            ],
          ),
         ],
        )
        
      ),
    );
  }
}
