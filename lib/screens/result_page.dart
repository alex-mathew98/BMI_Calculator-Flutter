import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/constants.dart';
import '../components/calculate_button.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmi,@required this.result,@required this.description});
  final String bmi;
  final String result;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
            padding: EdgeInsets.all(15.0) ,
            alignment: Alignment.bottomLeft,
            child: Center(
              child: Text(
                "Result",
                style: kTitleTextStyle,
              ),
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMIResultTextStyle,
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              )),
          CalculateButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
