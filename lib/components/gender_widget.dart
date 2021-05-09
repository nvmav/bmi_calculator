import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final IconData? iconData;
  final String? label;
  final Color? color;
  final Function? onTapCallBack;

  GenderWidget({this.iconData, this.label, this.color, this.onTapCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: GestureDetector(
        onTap: onTapCallBack as void Function()?,
        child: Column(
          children: <Widget>[
            Icon(
              iconData,
              size: 80.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              label!,
            ),
          ],
        ),
      ),
    );
  }
}
