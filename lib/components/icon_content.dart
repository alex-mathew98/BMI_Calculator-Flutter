import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';

class Icon_content extends StatelessWidget {
  Icon_content({@required this.label, this.icon});
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
