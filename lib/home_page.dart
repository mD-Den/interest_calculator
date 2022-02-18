import 'package:flutter/material.dart';

import 'generated/l10n.dart';
import 'our_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 181, 159, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 202, 187, 1),
        title: Text(
          S.of(context).app_bar_title,
          style: Theme.of(context).textTheme.bodyText1,
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
          FirstCont(
            id: 2,
            labelOne: S.of(context).label_two1,
            labelTwo: S.of(context).label_two2,
          ),
          FirstCont(
            id: 3,
            labelOne: S.of(context).label_three1,
            labelTwo: S.of(context).label_three2,
          ),
          FirstCont(
            id: 4,
            labelOne: S.of(context).label_four1,
            labelTwo: S.of(context).label_four2,
          ),
        ],
      ),
    );
  }
}
