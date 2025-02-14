import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/new_bar_interface.dart';
import 'input_page.dart';
import 'input_page_3.dart';
import 'input_page_4.dart';
import 'package:fitpro/components/reusable_card.dart';
import 'package:fitpro/components/bottom_button.dart';
import 'package:fitpro/components/icon_content.dart';
import 'package:fitpro/components/round_icon_button.dart';
import 'package:fitpro/components/bottom_button.dart';
import 'package:fitpro/brain.dart';
import 'results_page.dart';
import 'package:fitpro/components/generalised_drawer_widget.dart';
import 'results_page_2.dart';

enum Gender {
  male,
  female,
}

class InputPage2 extends StatefulWidget {
  InputPage2({required this.title});
  final String title;

  @override
  State<InputPage2> createState() => _InputPage2State();
}

class _InputPage2State extends State<InputPage2> {
  Gender? selectedGender;
  int height = 170;
  int weight = 50;
  int age = 15;
  double activityLevel = 0;
  String dropdownValue = 'Choose Activity Level';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white, size: 40.0),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0,
          ),
        ),
        backgroundColor: Color(0xFF1B1F33),
      ),
      drawer: GeneralisedDrawerWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? KactiveCardColor
                        : KinactiveCardColor,
                    cardChild: IconContent(
                      icon: Icons.male,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? KactiveCardColor
                        : KinactiveCardColor,
                    cardChild: IconContent(
                      icon: Icons.female,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: KactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: KlabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: KnumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: KlabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 13.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: KactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: KlabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: KnumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight = weight + 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  weight = weight - 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () {
                      //On press logic here
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: KactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: KlabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: KnumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  age = age + 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  age = age - 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () {
                      //On press logic here
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              margin: EdgeInsets.all(2.0),
              padding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 15.0), // Decreased vertical padding
              decoration: BoxDecoration(
                color: Color(0xFF1B1F33), // Background color of the button
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
                border: Border.all(
                    color: Colors.white,
                    width: 0.5), // Border color and thickness
              ),
              child: DropdownButtonHideUnderline(
                // Hide the default underline
                child: DropdownButton<String>(
                  value: dropdownValue == 'Choose Activity Level'
                      ? null
                      : dropdownValue,
                  hint: Text(
                    'Choose Activity Level',
                    style: KDetailsTextStyle3.copyWith(
                        color: Colors.white), // Hint text color
                  ),
                  dropdownColor:
                      Color(0xFF111328), // Background color of the dropdown
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                    size: 40.0,
                  ), // Dropdown icon color
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                      switch (newValue) {
                        case 'Little/No Exercise':
                          activityLevel = 1.2;
                          break;
                        case '1–3 Days/Week':
                          activityLevel = 1.375;
                          break;
                        case '3–5 Days/Week':
                          activityLevel = 1.55;
                          break;
                        case '6–7 Days/Week':
                          activityLevel = 1.725;
                          break;
                        case 'Intense Training':
                          activityLevel = 1.9;
                          break;
                      }
                    });
                  },
                  items: <String>[
                    'Little/No Exercise',
                    '1–3 Days/Week',
                    '3–5 Days/Week',
                    '6–7 Days/Week',
                    'Intense Training'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        child: Text(
                          value,
                          style: KDetailsTextStyle4.copyWith(
                              color: Colors.white), // Dropdown item text color
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain2 obj2 = CalculatorBrain2(
                height: height,
                weight: weight,
                age: age,
                activityLevel: activityLevel,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage2(
                    TDEEresult: obj2.getResult(),
                    interpretation: obj2.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
