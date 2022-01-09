import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';
class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonTitle, style: kLargeButtonTextStyle),
        ),
        color: kFooterColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: kFooterHeight,
      ),
    );
  }
}