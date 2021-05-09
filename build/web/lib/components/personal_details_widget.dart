import 'package:bmicalculator/components/icon_button_widget.dart';
import 'package:bmicalculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalDetailsWidget extends StatelessWidget {
  final String? label;
  final int? value;
  final String? units;
  final IconData? leftIconData;
  final IconData? rightIconData;
  final Function? onLeftIconPress;
  final Function? onRightIconPress;

  PersonalDetailsWidget(
      {this.label,
      this.value,
      this.units,
      this.leftIconData,
      this.rightIconData,
      this.onLeftIconPress,
      this.onRightIconPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        color: kSelectedColour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            label!,
            style: kLabelTextStyle,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(value.toString(), style: kNumberTextStyle),
              Text(
                units!,
                style: kUnitsTextStyle,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButtonWidget(
                  onPressed: onLeftIconPress, iconData: leftIconData),
              IconButtonWidget(
                  onPressed: onRightIconPress, iconData: rightIconData)
            ],
          ),
        ],
      ),
    );
  }
}
