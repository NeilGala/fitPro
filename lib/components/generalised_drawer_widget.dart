import 'package:flutter/material.dart';
import 'package:fitpro/components/new_bar_interface.dart';
import 'package:fitpro/screens/input_page.dart';
import 'package:fitpro/screens/input_page_2.dart';
import 'package:fitpro/screens/input_page_3.dart';
import 'package:fitpro/screens/input_page_4.dart';
import 'package:fitpro/constants.dart';

class GeneralisedDrawerWidget extends StatelessWidget {
  const GeneralisedDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            label: 'Body Mass Index (BMI)',
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
            label: 'Total Daily Energy Expenditure (TDEE)',
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
            label: 'Basal Metabolic Rate (BMR)',
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
            label: 'Waist to Height Ratio (WHtR)',
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
    );
  }
}
