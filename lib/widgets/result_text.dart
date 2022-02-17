import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interest_calculator/generated/l10n.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          margin: EdgeInsets.only(right: 3),
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(8),
          width: 120,
          child: FittedBox(
              child: Text(
            S.of(context).result,
            style: Theme.of(context).textTheme.subtitle2,
          ))),
    );
  }
}
