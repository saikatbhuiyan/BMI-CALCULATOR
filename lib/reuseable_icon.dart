import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFFdcdde1),
  fontWeight: FontWeight.w900,
);

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
          style: labelTextStyle,
        )
      ],
    );
  }
}
