import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/dataLegend.dart';
import 'package:purwasari_frontend/const.dart';

class RentangUsiaFragment extends StatefulWidget {
  final Widget child;

  RentangUsiaFragment({Key key, this.child}) : super(key: key);

  @override
  _RentangUsiaFragmentState createState() => _RentangUsiaFragmentState();
}

class _RentangUsiaFragmentState extends State<RentangUsiaFragment> {
  
  List<charts.Series<Age, String>> _seriesData;

  _generateData() {
    var data1 = [
      new Age('0-7', 644),
      new Age('8-18', 799),
      new Age('19-35', 1013),
      new Age('36-60', 1187),
      new Age('> 60', 402),
    ];
    var data2 = [
      new Age('0-7', 27),
      new Age('8-18', 659),
      new Age('19-35', 1060),
      new Age('36-60', 1118),
      new Age('> 60', 301),
    ];
    
    _seriesData.add(
      charts.Series(
        domainFn: (Age age, _) => age.range,
        measureFn: (Age age, _) => age.quantity,
        id: 'lakilaki',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Age age, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff2AB0FC)),
      ), 
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Age age, _) => age.range,
        measureFn: (Age age, _) => age.quantity,
        id: 'perempuan',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Age age, _) =>
           charts.ColorUtil.fromDartColor(Color(0xffF5A134)),
      ),
    );
  }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Age, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
        child: Column(
          children: [
            Text(
              'Rentang Usia Penduduk',
              style: Theme.of(context).textTheme.headline1
            ),
            Container(
              height: 300,
              child: Expanded(
                child: charts.BarChart(
                  _seriesData,
                  animate: true,
                  barGroupingType: charts.BarGroupingType.grouped,
                  //behaviors: [new charts.SeriesLegend()],
                  animationDuration: Duration(seconds: 1),
                ),
              ),
            ),
            AppCard(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DataLegend(
                      color: PurwasariAppPalette.lightBlue,
                      title: 'Laki - Laki',
                    ),
                    DataLegend(
                      color: PurwasariAppPalette.orange,
                      title: 'Perempuan',
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),
      ),
    );
  }
}

class Age {
  String range;
  int quantity;

  Age(this.range, this.quantity);
}