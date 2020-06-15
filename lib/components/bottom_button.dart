import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.buttonText, this.navigate});
  final Function navigate;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom:10),
        //margin: EdgeInsets.only(top:10),
        child: Center(child: Text(buttonText,style:kLargeButtonTextStyle)),
      ),
    );
  }
}