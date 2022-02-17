import 'package:flutter/material.dart';
import 'package:interest_calculator/widgets/second_operation.dart';

import 'generated/l10n.dart';
import 'our_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          S.of(context).app_bar_title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          FirstCont(
            id: 1,
            labelOne: S.of(context).label_one1,
            labelTwo: S.of(context).label_one2,
          ),
          const SizedBox(
            height: 10,
          ),
          FirstCont(
            id: 2,
            labelOne: S.of(context).label_two1,
            labelTwo: S.of(context).label_two2,
            widget: SecondOperationText(2, 2),
          ),
          const SizedBox(
            height: 10,
          ),
          FirstCont(
            id: 3,
            labelOne: S.of(context).label_three1,
            labelTwo: S.of(context).label_three2,
          ),
          const SizedBox(
            height: 10,
          ),
          FirstCont(
            id: 4,
            labelOne: S.of(context).label_four1,
            labelTwo: S.of(context).label_four2,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
