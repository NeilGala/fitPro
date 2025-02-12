import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/new_bar_interface.dart';
import 'input_page.dart';
import 'package:fitpro/screens/input_page_2.dart';
import 'input_page_4.dart';
import 'package:fitpro/components/reusable_card.dart';
import 'package:fitpro/components/bottom_button.dart';
import 'package:fitpro/components/icon_content.dart';
import 'package:fitpro/components/round_icon_button.dart';
import 'package:fitpro/components/bottom_button.dart';
import 'package:fitpro/brain.dart';
import 'results_page.dart';

enum Gender {
  male,
  female,
}

class InputPage3 extends StatefulWidget {
  InputPage3({required this.title});
  final String title;

  @override
  State<InputPage3> createState() => _InputPage3State();
}

class _InputPage3State extends State<InputPage3> {
  Gender? selectedGender;
  int height = 170;
  int weight = 50;
  int age = 15;
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
      drawer: Drawer(
        child: ListView(
          //  Ensure that ListView doesn't have any padding.
          //  This line will Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF1E2239),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: 35.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: 1.0),
                      Text(
                        'John Doe',
                        style: KDetailsTextStyle1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    'johndoe@gmail.com',
                    style: KDetailsTextStyle2,
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Health Metrix',
                    style: KDetailsTextStyle1,
                  ),
                ],
              ),
            ),
            newBarInterfaces(
              icon: Icons.scale_sharp,
              label: 'Body Mass Index(BMI)',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage(title: 'BMI'),
                  ),
                );
              },
            ),
            SizedBox(
              height: 3.0,
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            SizedBox(
              height: 3.0,
            ),
            newBarInterfaces(
              icon: Icons.bolt_outlined,
              label: 'Total Daily Energy Expenditure(TDEE)',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage2(title: 'TDEE'),
                  ),
                );
              },
            ),
            SizedBox(
              height: 3.0,
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            SizedBox(
              height: 3.0,
            ),
            newBarInterfaces(
              icon: Icons.monitor_heart_outlined,
              label: 'Basal Metabolic Rate(BMR)',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage3(title: 'BMR'),
                  ),
                );
              },
            ),
            SizedBox(
              height: 3.0,
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            SizedBox(
              height: 3.0,
            ),
            newBarInterfaces(
              icon: Icons.height_outlined,
              label: 'Waist to Height Ratio(WHtR)',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage4(title: 'WHtR'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
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
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain obj = CalculatorBrain(
                height: height,
                weight: weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    resultText: obj.getResult(),
                    BMIresult: obj.calculateBMI(),
                    interpretation: obj.getInterpretation(),
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
