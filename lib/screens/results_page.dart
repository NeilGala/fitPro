import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:fitpro/screens/input_page.dart';
import 'package:fitpro/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.resultText,
    required this.BMIresult,
    required this.interpretation,
  });

  final String resultText;
  final String BMIresult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 110.0),
              child: Center(
                child: Text(
                  'YOUR RESULT',
                  style: KlargeLabelTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              onPress: () {},
              colour: KactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: KresultTextStyle,
                  ),
                  Text(
                    BMIresult,
                    style: KBMItextStyle,
                  ),
                  Text(
                    interpretation,
                    style: KbodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
