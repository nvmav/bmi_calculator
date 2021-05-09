import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData? iconData;
  final Function? onPressed;

  IconButtonWidget({this.onPressed, this.iconData});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPressed as void Function()?,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
