import 'package:flutter/material.dart';

class DataLegend extends StatelessWidget {
  final Color color;
  final String title;
  const DataLegend({
    this.color,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: this.color,
          width: 15,
          height: 15,
        ),
        Padding(padding: EdgeInsets.only(right: 6)),
        Text(this.title,
          style: Theme.of(context).textTheme.bodyText1
        )
      ],
    );
  }
}
