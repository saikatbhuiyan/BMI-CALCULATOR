import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'constant.dart';
import 'bottom_button.dart';

class Result extends StatelessWidget {
  Result(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
//    int resultValue = 10;
//    String resultText = 'NORMAL';
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'YOUR RESULT',
                  style: kNumberTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 7,
              child: ReuseableCard(
                colour: kInactiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kResultNumberTextStyle,
                    ),
                    Text(interpretation,
                        textAlign: TextAlign.center,
                        style: kResultSuggestTextStyle),
                  ],
                ),
              )),
          BottomButton(
            onPress: () {
              Navigator.pop(context); //pushNamed(context, '/');
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
