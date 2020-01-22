import 'package:flutter/material.dart';
import 'constant.dart';

class ReuseableIcon extends StatelessWidget {
  ReuseableIcon({this.iconReuse, this.textReuse});

  final IconData iconReuse;
  final String textReuse;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconReuse,
          size: 60,
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(
          textReuse,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
