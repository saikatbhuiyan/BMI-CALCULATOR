import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reuseable_card.dart';
import 'reuseable_icon.dart';

enum Gender { male, female }

const bottomContainerHeight = 70.0;
const bottomContainerColor = Color(0xFF1B1464);
const inactiveColor = Color(0xFF2c2c54);
const activeColor = Color(0xFF40407a);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;
//1=male, 2=female
  void updateColor(Gender genderSelect) {
//    male gender
    if (genderSelect == Gender.male) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      } else {
        maleColor = inactiveColor;
      }
    }
//    female gender
    if (genderSelect == Gender.male) {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
        maleColor = inactiveColor;
      } else {
        femaleColor = inactiveColor;
      }
    }
  }

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
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(Gender.male);
                  });
                },
                child: ReuseableCard(
                  colour: maleColor,
                  cardChild: ReuseableIcon(
                    iconReuse: FontAwesomeIcons.venus,
                    textReuse: 'MALE',
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(Gender.female);
                  });
                },
                child: ReuseableCard(
                  colour: femaleColor,
                  cardChild: ReuseableIcon(
                    iconReuse: FontAwesomeIcons.venus,
                    textReuse: 'FEMALE',
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: ReuseableCard(colour: activeColor)),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour: activeColor)),
              Expanded(child: ReuseableCard(colour: activeColor)),
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
