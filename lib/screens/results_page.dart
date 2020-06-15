import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  final String bmi;
  final String interpretetion;
  final String weight;

  ResultsPage({@required this.bmi, @required this.interpretetion, @required this.weight});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Text('Your Results', style: kHeightTextStyle),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(weight.toUpperCase(), style: kResultWeightTextStyle),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    interpretetion,
                    textAlign: TextAlign.center,
                    style: kResultPageText,
                  ))
                ],
              ),
            ),
          ),
          BottomButton(buttonText:'RE-CALCULATE',navigate: (){Navigator.pop(context);},)
        ],
      ),
    );
  }
}
