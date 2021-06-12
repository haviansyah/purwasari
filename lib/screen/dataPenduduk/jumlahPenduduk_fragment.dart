import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/dataLegend.dart';
import 'package:purwasari_frontend/component/tabel.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class JumlahPendudukFragment extends StatefulWidget {
  final Widget child;

  JumlahPendudukFragment({Key key, this.child}) : super(key: key);

  @override
  _JumlahPendudukFragmentState createState() => _JumlahPendudukFragmentState();
}

class _JumlahPendudukFragmentState extends State<JumlahPendudukFragment> {
   List<charts.Series<Task, String>> _seriesPieData;

  _generateData(){
    var piedata = [
      new Task('Perempuan', 3948, PurwasariAppPalette.orange),
      new Task('Laki-laki', 3698, PurwasariAppPalette.lightBlue),
    ];
    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'jenis_kelamin',
        data: piedata,
         labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ignore: deprecated_member_use
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      // height: 300,
      child:  Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
        child: Column(
          children: <Widget>[
            Text(
              'Jumlah Penduduk',
              style: Theme.of(context).textTheme.headline1
              ),
            Container(
              height: 300,
              child: charts.PieChart(
                _seriesPieData,
                animate: true,
                animationDuration: Duration(seconds: 1),
                  // behaviors: [
                  //   new charts.DatumLegend(
                  //     position: charts.BehaviorPosition.bottom,
                  //     // outsideJustification: charts.OutsideJustification.endDrawArea,
                  //     // horizontalFirst: false,
                  //     desiredMaxRows: 2,
                  //     // cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                  //     entryTextStyle: charts.TextStyleSpec(
                  //       color: charts.MaterialPalette.black,
                  //       fontFamily: 'Montserrat',
                  //       fontSize: 11),
                  //   )
                  // ],
                defaultRenderer: new charts.ArcRendererConfig(
                  strokeWidthPx: 0.01,
                  arcRendererDecorators: [
                    new charts.ArcLabelDecorator(
                      labelPosition: charts.ArcLabelPosition.inside,
                      insideLabelStyleSpec: charts.TextStyleSpec(
                        fontFamily: 'MontserratMedium',
                        fontSize: 12,
                        // color: Color(0xffffffff),
                      )
                    )
                    ]
                    )
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
            AppCard(
              color: PurwasariAppPalette.green,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Center(
                  child: Text('Keterangan',
                  style: TextStyle(
                    fontFamily: 'MontserratMedium',
                    fontSize: 12,
                    color: Colors.white
                  )
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 12)),
            TabelListTwo(
              title: 'Jumlah Total Penduduk',
              qty: '7646 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 12)),
            TabelListTwo(
              title: 'Jumlah Kepala Keluarga',
              qty: '2282 KK',
            ),
            Padding(padding: EdgeInsets.only(bottom: 12)),
            TabelListTwo(
              title: 'Kepadatan Penduduk',
              qty: '3.623,42 per KM',
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),
      ),
    );
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}