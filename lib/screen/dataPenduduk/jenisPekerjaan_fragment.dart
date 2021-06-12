import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/tabel.dart';
import 'package:purwasari_frontend/const.dart';

class JenisPekerjaanFragment extends StatefulWidget {
  @override
  _JenisPekerjaanFragmentState createState() => _JenisPekerjaanFragmentState();
}

class _JenisPekerjaanFragmentState extends State<JenisPekerjaanFragment> {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top:20, left:12, right: 12,),
        child: Column(
          children: [
          Text(
              'Mata Pencaharian Pokok',
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
                    Text('Jenis Mata Pencaharian',
                      style: TextStyle(
                        fontFamily: 'MontserratMedium',
                        fontSize: 12,
                        color: Colors.white
                      )
                    ),
                    Text('Jumlah',
                      style: TextStyle(
                        fontFamily: 'MontserratMedium',
                        fontSize: 12,
                        color: Colors.white
                      )
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 12)),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                TabelListTwo(
                  title: 'Petani',
                  qty: '490 Orang',
                ),
                Padding(padding: EdgeInsets.only(bottom: 12)),
                TabelListTwo(
                  title: 'Buruh tani',
                  qty: '611 Orang',
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                TabelListTwo(
                  title: 'Pegawai Negeri Sipil',
                  qty: '35 Orang',
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                TabelListTwo(
                  title: 'Pedagang Barang Kelontong',
                  qty: '52 Orang',
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                TabelListTwo(
                  title: 'Peternak',
                  qty: '67 Orang',
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                TabelListTwo(
                  title: 'Montir',
                  qty: '11 Orang',
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                TabelListTwo(
                  title: 'Perawat Swasta',
                  qty: '3 Orang',
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                TabelListTwo(
                  title: 'POLRI',
                  qty: '2 Orang',
                ),
              ],
            ),
         ],
        )
        
      ),
    );
  }
}