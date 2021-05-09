import 'package:bmicalculator/components/gender_widget.dart';
import 'package:bmicalculator/components/personal_details_widget.dart';
import 'package:bmicalculator/components/slider_parent_widget.dart';
import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  MALE,
  FEMALE,
}

class UserVitalsPage extends StatefulWidget {
  @override
  _UserVitalsPageState createState() => _UserVitalsPageState();
}

class _UserVitalsPageState extends State<UserVitalsPage> {
  Gender selectedGender = Gender.MALE;
  int height = 130;
  int weight = 55;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    print('build()');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: GenderWidget(
                    iconData: FontAwesomeIcons.mars,
                    label: 'MALE',
                    color: selectedGender == Gender.MALE
                        ? kSelectedColour
                        : kUnselectedColour,
                    onTapCallBack: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GenderWidget(
                    iconData: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                    color: selectedGender == Gender.FEMALE
                        ? kSelectedColour
                        : kUnselectedColour,
                    onTapCallBack: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: SliderParentWidget(
                color: kSelectedColour,
                height: height.toDouble(),
                child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newVal) {
                      setState(() {
                        height = newVal.toInt();
                      });
                    }),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: PersonalDetailsWidget(
                      label: "WEIGHT",
                      value: weight,
                      units: "lbs",
                      leftIconData: FontAwesomeIcons.minus,
                      rightIconData: FontAwesomeIcons.plus,
                      onLeftIconPress: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onRightIconPress: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: PersonalDetailsWidget(
                      label: "AGE",
                      value: age,
                      units: "yrs",
                      leftIconData: FontAwesomeIcons.minus,
                      rightIconData: FontAwesomeIcons.plus,
                      onLeftIconPress: () {
                        setState(() {
                          age--;
                        });
                      },
                      onRightIconPress: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: kBottomContainerHeight,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: kBottomButtonColour,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/result');
                },
                child: Text(
                  "CALCULATE",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
