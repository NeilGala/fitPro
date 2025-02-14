import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage2 extends StatelessWidget {
  const ResultsPage2({
    super.key,
    required this.TDEEresult,
    required this.interpretation,
  });

  final double TDEEresult;
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
                    TDEEresult.toStringAsFixed(1),
                    style: KtdeeResult,
                  ),
                  Text(
                    interpretation,
                    style: KtdeeMessage,
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
