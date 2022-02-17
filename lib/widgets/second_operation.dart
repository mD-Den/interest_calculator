import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondOperationText extends StatelessWidget {
  final double totalScore;
  final int id;

  SecondOperationText({@required this.totalScore, @required this.id});

  @override
  Widget build(BuildContext context) {
    if (id == 2) {
      // return RichText(
      //     maxLines: 1,
      //     text:
      //         TextSpan(style: Theme.of(context).textTheme.subtitle1, children: [
      //       TextSpan(
      //         text: totalScore
      //             .toString()
      //             .replaceAll(RegExp(r'([.]*0)(?!.*\d)'), ""),
      //       ),
      //       TextSpan(text: "5555")
      //     ]));
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                totalScore
                    .toString()
                    .replaceAll(RegExp(r'([.]*0)(?!.*\d)'), ""),
                style: Theme.of(context).textTheme.subtitle1,
                maxLines: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Text(
              "%",
              style: Theme.of(context).textTheme.subtitle1,
              maxLines: 1,
            ),
          ),
        ],
      );
    } else {
      return Text(
        totalScore.toString().replaceAll(RegExp(r'([.]*0)(?!.*\d)'), ""),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        maxLines: 1,
      );
    }
  }
}
