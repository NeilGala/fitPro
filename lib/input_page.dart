import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 65.0;
const activeCardColor = Color(0xFF1B1F33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender selectedGender) {
    maleCardColor = selectedGender == Gender.male
        ? (maleCardColor == inactiveCardColor
            ? activeCardColor
            : inactiveCardColor)
        : inactiveCardColor;

    femaleCardColor = selectedGender == Gender.female
        ? (femaleCardColor == inactiveCardColor
            ? activeCardColor
            : inactiveCardColor)
        : inactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'fitPro',
        ),
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
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: IconContent(
                        icon: Icons.male,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: IconContent(
                        icon: Icons.female,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
