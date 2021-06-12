import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/dataLegend.dart';
import 'package:purwasari_frontend/component/tabel.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TingkatPendidikanFragment extends StatefulWidget {
  final Widget child;

  TingkatPendidikanFragment({Key key, this.child}) : super(key: key);

  @override
  _TingkatPendidikanFragmentState createState() => _TingkatPendidikanFragmentState();
}

class _TingkatPendidikanFragmentState extends State<TingkatPendidikanFragment> {
   List<charts.Series<Task, String>> _seriesPieData;

  _generateData(){
    var piedata = [
      new Task('Usia 3 - 6 tahun yang belum masuk TK', 27, Colors.red),
      new Task('Usia 7 - 18 tahun yang tidak pernah sekolah', 1, Colors.grey),
      new Task('Usia 7 - 18 tahun yang sedang sekolah', 327, PurwasariAppPalette.lightBlue),
      new Task('Usia Tamat SD/sederajat', 3131, Colors.indigo),
      new Task('Usia Tamat SMP/sederajat', 1048, PurwasariAppPalette.pink),
      new Task('Usia Tamat SMA/sederajat', 596, PurwasariAppPalette.green),
      new Task('Usia Tamat D-2/sederajat', 18, Colors.brown),
      new Task('Usia Tamat S-1/sederajat', 58, PurwasariAppPalette.orange),
      new Task('Usia Tamat S-2/sederajat', 3, Colors.black),

    ];
    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'pendidikan',
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
              'Tingkat Pendidikan',
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
                )
                )
              ),
            AppCard(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 24),
                child: Column(
                  children: [
                    DataLegend(
                      color: Colors.red,
                      title: 'Usia 3 - 6 tahun yang belum masuk TK',
                    ),
                    Padding(padding: EdgeInsets.only(top:6)),
                    DataLegend(
                      color: Colors.grey,
                      title: 'Usia 7 - 18 tahun yang tidak pernah sekolah',
                    ),
                    Padding(padding: EdgeInsets.only(top:6)),
                    DataLegend(
                      color: PurwasariAppPalette.lightBlue,
                      title: 'Usia 7 - 18 tahun yang tidak sedang sekolah',
                    ),
                    Padding(padding: EdgeInsets.only(top:6)),
                    DataLegend(
                      color: Colors.indigo,
                      title: 'Tamat SD/Sederajat',
                    ),
                    Padding(padding: EdgeInsets.only(top:6)),
                    DataLegend(
                      color: PurwasariAppPalette.pink,
                      title: 'Tamat SMP/Sederajat',
                    ),
                    Padding(padding: EdgeInsets.only(top:6)),
                    DataLegend(
                      color: PurwasariAppPalette.green,
                      title: 'Tamat SMA/Sederajat',
                    ),
                    Padding(padding: EdgeInsets.only(top:6)),
                    DataLegend(
                      color: Colors.brown,
                      title: 'Tamat D-2/Sederajat',
                    ),
                    Padding(padding: EdgeInsets.only(top:6)),
                    DataLegend(
                      color: PurwasariAppPalette.orange,
                      title: 'Tamat S-1/Sederajat',
                    ),
                    Padding(padding: EdgeInsets.only(top:6)),
                    DataLegend(
                      color: Colors.yellow,
                      title: 'Tamat S-2/Sederajat',
                    ),
                    Padding(padding: EdgeInsets.only(top:8)),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top:24)),
            AppCard(
              color: PurwasariAppPalette.green,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tingkat Pendidikan',
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
            TabelListTwo(
              title: 'Usia 3-6 tahun yang belum masuk TK',
              qty: '27 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 12)),
            TabelListTwo(
              title: 'Usia 7-18 tahun yang tidak pernah sekolah',
              qty: '1 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
             TabelListTwo(
              title: 'Usia 7-18 tahun yang sedang sekolah',
              qty: '327 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
             TabelListTwo(
              title: 'Tamat SD / Sederajat',
              qty: '3131 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
             TabelListTwo(
              title: 'Tamat SMP / Sederajat',
              qty: '1048 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
             TabelListTwo(
              title: 'Tamat SMA / Sederajat',
              qty: '596 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
             TabelListTwo(
              title: 'Tamat D-2 / Sederajat',
              qty: '18 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
             TabelListTwo(
              title: 'Tamat S-1 / Sederajat',
              qty: '58 Orang',
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
             TabelListTwo(
              title: 'Tamat S-2 / Sederajat',
              qty: '3 Orang',
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