import 'package:flutter/material.dart';

class Legend extends StatelessWidget {
  Legend({
    @required this.title,
    @required this.color,
    @required this.style,
    @required this.legendRounded,
  });

  final String title;
  final Color color;
  final TextStyle style;
  final bool legendRounded;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 2.0),
          height: 20.0,
          width: 18.0,
          decoration: BoxDecoration(
            shape: legendRounded ? BoxShape.circle : BoxShape.rectangle,
            color: color,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Text(
            title,
            style: style,
            softWrap: true,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
      ],
    );
  }
}
