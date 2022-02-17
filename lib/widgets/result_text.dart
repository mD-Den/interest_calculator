import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interest_calculator/generated/l10n.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        width: 120,
        child: FittedBox(
            child: Text(
          S.of(context).result,
          style: Theme.of(context).textTheme.bodyText1,
        )));
  }
}
