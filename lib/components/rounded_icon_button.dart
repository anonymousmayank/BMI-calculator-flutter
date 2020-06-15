import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundedIconButton({this.icon, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      shape: CircleBorder(),
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      elevation: 6.0,
      fillColor: Color(0xFF4c4f5e),
    );
  }
}
