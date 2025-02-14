import 'package:flutter/material.dart';
import '../components/generalised_drawer_widget.dart';
import '../constants.dart';

class AboutFeature extends StatefulWidget {
  AboutFeature({required this.title});
  final String title;
  @override
  _AboutFeatureState createState() => _AboutFeatureState();
}

class _AboutFeatureState extends State<AboutFeature> {
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            ExpansionTile(
              title: Text(
                'BMI (Body Mass Index)',
                style: KDetailsTextStyle4.copyWith(color: Colors.white),
              ),
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "It is a numerical value calculated from a person's weight and height. It is used to classify individuals into different weight categories, such as underweight, normal weight, overweight, and obesity.",
                    style: KDetailsTextStyle3.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.white),
            ExpansionTile(
              title: Text(
                'TDEE (Total Daily Energy Expenditure)',
                style: KDetailsTextStyle4.copyWith(color: Colors.white),
              ),
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "TDEE (Total Daily Energy Expenditure) is the total number of calories your body burns in a day",
                    style: KDetailsTextStyle3.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.white),
            ExpansionTile(
              title: Text(
                'BMR (Basal Metabolic Rate)',
                style: KDetailsTextStyle4.copyWith(color: Colors.white),
              ),
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Basal Metabolic Rate (BMR) is the number of calories your body needs to maintain basic physiological functions.',
                    style: KDetailsTextStyle3.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.white),
            ExpansionTile(
              title: Text(
                'WHtR (Waist to Height Ratio)',
                style: KDetailsTextStyle4.copyWith(color: Colors.white),
              ),
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Waist to Height Ratio (WHtR) is a measure of the distribution of body fat.',
                    style: KDetailsTextStyle3.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
