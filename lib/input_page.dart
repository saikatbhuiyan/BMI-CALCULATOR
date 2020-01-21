import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reuseable_card.dart';
import 'reuseable_icon.dart';
import 'constant.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 50;
  int age = 15;
//  Color maleColor = inactiveColor;
//  Color femaleColor = inactiveColor;
////1=male, 2=female
//  void updateColor(Gender genderSelect) {
////    male gender
//    if (genderSelect == Gender.male) {
//      if (maleColor == inactiveColor) {
//        maleColor = activeColor;
//        femaleColor = inactiveColor;
//      } else {
//        maleColor = inactiveColor;
//      }
//    }
////    female gender
//    if (genderSelect == Gender.male) {
//      if (femaleColor == inactiveColor) {
//        femaleColor = activeColor;
//        maleColor = inactiveColor;
//      } else {
//        femaleColor = inactiveColor;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReuseableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour: selectedGender == Gender.male
                    ? kActiveColor
                    : kInactiveColor,
                cardChild: ReuseableIcon(
                  iconReuse: FontAwesomeIcons.venus,
                  textReuse: 'MALE',
                ),
              )),
              Expanded(
                  child: ReuseableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour: selectedGender == Gender.female
                    ? kActiveColor
                    : kInactiveColor,
                cardChild: ReuseableIcon(
                  iconReuse: FontAwesomeIcons.venus,
                  textReuse: 'FEMALE',
                ),
              )),
            ],
          )),
          Expanded(
              child: ReuseableCard(
            colour: kActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTickMarkColor: Colors.purple,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x49EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
//                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReuseableCard(
                colour: kActiveColor,
                cardChild: Column(
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      weight.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: ReuseableCard(
                colour: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AGE',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      fillColor: Color(0xFF5352ed),
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      shape: CircleBorder(),
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
