import 'package:flutter/material.dart';

const bottomContainerHeight = 70.0;
const bottomContainerColor = Color(0xFFE83F67);
const colorReuseableCard = 0xFF323244;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour: Color(colorReuseableCard))),
              Expanded(child: ReuseableCard(colour: Color(colorReuseableCard))),
            ],
          )),
          Expanded(child: ReuseableCard(colour: Color(colorReuseableCard))),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour: Color(colorReuseableCard))),
              Expanded(child: ReuseableCard(colour: Color(colorReuseableCard))),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
